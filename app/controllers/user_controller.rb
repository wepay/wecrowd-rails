class UserController < ApplicationController
  
  protect_from_forgery with: :exception, :except => [:ipn] # IPNs don't require the CSRF check
  
  before_filter :check_user, :except => [ :register, :create, :login, :logout, :ipn]
  
  def index
  end

  # GET /user/view/12345
  # this is the profile of the user
  # it shows the WePay account details and a list of all campaigns
  def view
    @user = User.find(params[:user_id])
    @account_details = @user.get_wepay_account
    @balance = Money.new(@account_details["balances"][0]["balance"]*100, @account_details["balances"][0]["currency"])
    @campaigns = @user.campaigns
    @update_uri = @user.get_wepay_account_update_uri['uri']
    @mfa = Mfa.find_by_user_id(@user.id)
  end

  def edit
  end
  
  # GET /user/verify/12345
  # lets the merchant verify their account on WePay
  def verify
    if !@user.has_access_token?
      return redirect_to("/user/view/#{@user.id}")
    end
    @update_uri = @user.get_wepay_account_update_uri['uri']
  end

  # GET/POST /login
  # lets people login to the site
  def login
    @redirect = params[:redirect]
    if request.post?
      @user = User.authenticate(params[:email], params[:password])
      if !@user
        error("Invalid email/password combination")
        return redirect_to("/login")
      else
        sign_in(@user)
        is_there_MFA = @user.wants_MFA_enabled
        #if the user wants MFA enabled
        if is_there_MFA == true
          #get the user's MFA
          mfa = Mfa.find_by_user_id(@user.id)
          #check if mfa is nil. mfa could be null if the user indicated that he wanted MFA upon signing up but never went through with it (never went through the verification step). if mfa is null then go to the mfa register step.
          if(mfa!=nil)
            #here the mfa is not null but we are going to check if the state is confirmed. The state would be confirmed if the user went through the verification step and his/her security code is confirmed by WeCrowd
            state = mfa.state
            #if the state is confirmed, then check cookies. If it's not confirmed, then go to the verify step.
            if(state == "confirmed")
              cookie = cookies.signed[:mfa_remember]
              if cookie == nil
                mfa.send_challenge
                redirect_to("/mfa/verify/#{@user.id}")
              else
                mfa_id = mfa.wepay_mfa_id
                cookie_validation_response = mfa.validate_cookie(mfa_id, cookie)
                does_challenge_need_to_be_sent = cookie_validation_response["challenge_required"]
                if(does_challenge_need_to_be_sent == true)
                  mfa.send_challenge
                  return redirect_to("/mfa/verify/#{@user.id}")
                else
                  return redirect_to("/user/view/#{@user.id}")
                end
              end
            else
              #this case would be if the state is not confirmed (the user indicated that they wanted to enable MFA but never went through the flow of setting it up.)
              if(mfa.mfa_type == "authenticator")
                phone_number = nil
                mfa_created = mfa.register_mfa(phone_number)
                @auth_url = mfa_created["challenge_data"]["qr"]["@2x"]
                render :action => "../mfa/google_auth_challenge", :user_id => @user.id
              else
                return redirect_to("/mfa/verify/#{@user.id}")
              end
            end
          else
              return redirect_to("/mfa/register/#{@user.id}")
          end
        #the user did not want MFA enabled, so just
        else
          if params[:redirect] && session[:redirects]
            url = session[:redirects][params[:redirect]] || "/user/view/#{@user.id}"
            return redirect_to(url)
          end
          return redirect_to("/user/view/#{@user.id}")
        end
      end
    end
  end

  # GET /logout
  # if you are logged in, log yourself out
  def logout
    if signed_in?
      sign_out
      message("You are now logged out")
    end
    redirect_to("/")
  end
  
  # GET /user/register
  # allows people to register on the site
  def register
    @user = User.new
  end

  # POST /user/register
  # handles the form post from the user register page
  def create
    if request.post?
      @user = User.new({:name => params[:name], :email => params[:email]})
      @user.password = params[:password]
      if @user.valid? && @user.save
        sign_in(@user)
        message("Thanks for registering, #{@user.name}")
        redirect_to("/user/view/#{@user.id}")
      else
        error(@user.errors.full_messages)
        redirect_to("/user/register")
      end
    end
  end
  
  # POST /user/resend_confirmation_email/12345
  # allows users to resend the WePay registration confirmation email
  def resend_confirmation_email
    response = @user.resend_confirmation_email
    if response["error"]
      error(response["error_description"])
    else
      message("Confirmation Email Sent!")
    end
    redirect_to("/user/view/#{@user.id}")
  end
  
  def ipn
    @user = User.find(params[:user_id])
    @user.handle_ipn
    render :json => { :success => "thanks for the update" }
  end
  
  private
  
  # make sure the user is logged in and has permission to access that user's details
  def check_user
    if !params[:user_id] || params[:user_id].empty?
      raise "No user_id passed for action that requires user"
    end
    @user = authenticate(params[:user_id], request.path, params[:user_hash])
  end
end
