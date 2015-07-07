class MfaController < ApplicationController

  #before_filter :check_user, except: [:create, :about, :index, :verify, :confirm, :trust, :challenge]
  before_filter :check_user

  def index

  end

  def new
    @mfa = Mfa.new
  end

  def create

    user_id = params[:user_id]
    mfa_type = params[:type]
    nickname = params[:nickname]
    phone_number = params[:phone_number]
    state = "unconfirmed"

    @user = User.find_by_id(params[:user_id])
    $mfa = Mfa.new({
                                 user_id: @user.id,
                                 mfa_type: mfa_type,
                                 nickname: nickname,
                                 state: state

                             })

    if $mfa.valid? && $mfa.save
      #render json: phone_number
      mfa_created = $mfa.register_mfa(phone_number)
      wepay_mfa_id = mfa_created['mfa_id']
      $mfa.wepay_mfa_id = wepay_mfa_id
      if(mfa_type=="authenticator")
        @auth_url = mfa_created["challenge_data"]["qr"]["@2x"]
        render :action => 'google_auth_challenge', :user_id => @user.id
      else
      challenge_sent = $mfa.send_challenge
      #redirect_to("/mfa/verify/#{:user_id}")
      #redirect_to("/mfa/verify/#{@user.id}")
      #render json: mfa_created

      #uncomment the following line:
      redirect_to("/mfa/verify/#{@user.id}")
      end
    else
      $mfa.state = "failure"

    end

    end

  def check_user
    user_id = params[:user_id]
    @user = authenticate(user_id, request.path, nil)
  end

  def about

  end

  def verify

    user_id = params[:user_id]
    @user = User.find_by_id(user_id)
    code = params[:code]
    keep_session = false
    if(params[:trust_computer])
      keep_session = true
    end
    cookie_domain = request.host
    challenge_verified = $mfa.confirm_challenge(code, keep_session, cookie_domain)
    $mfa.state = challenge_verified['state']
    cookie_returned_by_wepay = challenge_verified['cookie']['signature']
    cookie = cookie_returned_by_wepay.to_s
    cookies.signed[:mfa_remember] = {:value => cookie, :expires => 1.minute.from_now}
    redirect_to("/mfa/confirm/#{@user.id}")

  end

  def confirm
    user_id = params[:user_id]
    #redirect_to("/user/view/#{user_id}")

  end

  def trust

  end

  def challenge

  end

  def google_auth_challenge
    user_id = params[:user_id]

  end




end