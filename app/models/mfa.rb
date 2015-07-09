require 'open-uri'
class Mfa < ActiveRecord::Base
  belongs_to :user
  attr_accessor :picture


  def register_mfa(phone_number)

    access_token = self.user.wepay_access_token
    type = self.mfa_type
    nickname = self.nickname
    set_up_data = {"phone_number" => phone_number}
    #cookie = "WSIG=Ap4P….GTEq; Domain=foo.com; Path=/; Expires=Wed, 13 Jan 2015 22:23:01 GMT; Secure; HttpOnly"

    if(type == "authenticator")
      response = WEPAY.call("/user/mfa/create", access_token, {
                                                  type: type,
                                                  nickname: nickname
                                              })

    else
    response = WEPAY.call("/user/mfa/create", access_token, {
                                                type: type,
                                                nickname: nickname,
                                                setup_data: set_up_data

                                            })
    end
    return response

  end

  def send_challenge

    access_token = self.user.wepay_access_token
    mfa_id = self.wepay_mfa_id
    response = WEPAY.call("/user/mfa/send_challenge", access_token, {
                                                mfa_id: mfa_id

                                            })
    if response["error"]
      throw response["error_description"]
    end
    return response

  end

  def confirm_challenge(code, keep_session, cookie_domain)

    access_token = self.user.wepay_access_token
    mfa_id = self.wepay_mfa_id
    code = code.to_s  #local variable code set equal to the parameter passed in, also named code
    cookie_domain = cookie_domain.to_s
    if(keep_session == true)
      challenge = {"code" => code, "keep_session" => keep_session, "cookie_domain" => cookie_domain}
    else
      challenge = {"code" => code}
    end

    response = WEPAY.call("/user/mfa/confirm", access_token, {
                                                   mfa_id: mfa_id,
                                                   challenge: challenge
                                               })

    return response
  end

  def image(url)
    self.picture = open(url)

  end

  def validate_cookie(mfa_id, cookie)
    mfa_id = mfa_id
    access_token = self.user.wepay_access_token
    response = WEPAY.call("/user/mfa/validate_cookie", access_token, {
                                                 mfa_id: mfa_id,
                                                 cookie: cookie
                                             })
    return response


  end

  def getMfa(user_id)
    return self.id
  end
end