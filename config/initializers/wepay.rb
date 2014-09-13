WEPAY_CONFIG = YAML.load_file("#{Rails.root.to_s}/config/wepay.yml")[Rails.env]
WEPAY = WePay.new(WEPAY_CONFIG['client_id'], WEPAY_CONFIG['client_secret'], WEPAY_CONFIG['use_stage'], true)