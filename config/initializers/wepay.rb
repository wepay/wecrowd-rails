WEPAY_CONFIG = {
  client_id: Rails.application.secrets.client_id,
  client_secret: Rails.application.secrets.client_secret,
  access_token: Rails.application.secrets.access_token,
  account_id: Rails.application.secrets.account_id,
  use_stage: true
}
WEPAY = WePay.new(WEPAY_CONFIG[:client_id], WEPAY_CONFIG[:client_secret], WEPAY_CONFIG[:use_stage], true)
