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
        @get_user = User.find_by_email(params[:email])
        mfa = Mfa.find_by_user_id(@get_user.id)
        is_there_MFA = @get_user.wants_MFA_enabled
        if is_there_MFA == true
          cookie = cookies.signed[:mfa_remember]
          if cookie == nil
            mfa.send_challenge
            redirect_to("/mfa/verify/#{@user.id}")
          else
            mfa_id = mfa.wepay_mfa_id
            cookie_validation_response = $mfa.validate_cookie(mfa_id, cookie)
            does_challenge_need_to_be_sent = cookie_validation_response["challenge_required"]
            if(does_challenge_need_to_be_sent == true)
              mfa.send_challenge
              redirect_to("/mfa/verify/#{@user.id}")
            else
              redirect_to("/user/view/#{@user.id}")
            end
          end

        else
          sign_in(@user)
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
