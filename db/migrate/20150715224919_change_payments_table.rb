class ChangePaymentsTable < ActiveRecord::Migration
  def change
    rename_column :payments, :wepay_credit_card_id, :wepay_payment_id
  end
end
