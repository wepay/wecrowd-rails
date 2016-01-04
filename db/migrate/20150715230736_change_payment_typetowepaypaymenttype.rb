class ChangePaymentTypetowepaypaymenttype < ActiveRecord::Migration
  def change
    rename_column :payments, :payment_type, :wepay_payment_type
  end
end
