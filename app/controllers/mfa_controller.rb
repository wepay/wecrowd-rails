class MfaController < ApplicationController

  before_filter :check_user

  def create #this function is called when we register the MFA information that was entered by the user (type (sms, voice or google authenticator) and phone number if applicable, nickname)

    mfa_type = params[:type]
    nickname = params[:nickname]
    phone_number = params[:phone_number]
    state = "unconfirmed"
    #store the user's ID whose enabling MFA, the type of MFA they want, and nickname. The state is unconfirmed until after the call is made to WePay and confirmed
    $mfa = Mfa.new({
                                 user_id: @user.id,
                                 mfa_type: mfa_type,
                                 nickname: nickname,
                                 state: state

                             })

    if $mfa.valid? && $mfa.save
      #call the register_mfa method from the mfa model
      mfa_created = $mfa.register_mfa(phone_number)
      #if there was a wrong phone number entered, display the error
      if(mfa_created["error_description"] == "Invalid phone number.")
        error("The phone number you entered is not valid. Please enter a valid phone number.")
        redirect_to("/mfa/register/#{@user.id}")
      else
        #store the mfa_ID returned by the WePay "/user/mfa/create" call
        wepay_mfa_id = mfa_created['mfa_id']
        $mfa.wepay_mfa_id = wepay_mfa_id
        $mfa.save
        #if the user chose Google Authenticator, then grab the image url returned
        if(mfa_type=="authenticator")
          @auth_url = mfa_created["challenge_data"]["qr"]["@2x"]
          render :action => 'google_auth_challenge', :user_id => @user.id
        else
          challenge_sent = $mfa.send_challenge
          redirect_to("/mfa/verify/#{@user.id}")
        end
      end
    else
      $mfa.state = "failure"
    end
  end

  def check_user
    user_id = params[:user_id]
    @user = authenticate(user_id, request.path, nil)
  end

  def verify
    code = params[:code]
    keep_session = false
    #if the user chooses to trust the computer, then we will store the cookie that is returned by the WePay confirm challenge API call
    if(params[:trust_computer])
      keep_session = true
    end
    cookie_domain = request.host
    challenge_verified = $mfa.confirm_challenge(code, keep_session, cookie_domain)
    if(challenge_verified["error_description"] == "Invalid code")
      error("The code you entered is incorrect. Please enter the security code sent to your mobile device.")
      redirect_to("/mfa/verify/#{@user.id}")
    else
      #save the mfa state only after the MFA has been successfully confirmed by WePay
      $mfa.state = challenge_verified['state']
      $mfa.save
      #if the user wants to trust the computer, actually save the cookie here
      if(keep_session == true)
        cookie_returned_by_wepay = challenge_verified['cookie']['signature']
        cookie = cookie_returned_by_wepay.to_s
      else
        cookie = nil
      end
      #set the cookie to expire after 30 days
      cookies.signed[:mfa_remember] = {:value => cookie, :expires => 30.days.from_now}
      message("MFA has been enabled!")
      redirect_to("/user/view/#{@user.id}")
    end
  end

  def confirm

  end

  def challenge

  end

  def google_auth_challenge

  end

end