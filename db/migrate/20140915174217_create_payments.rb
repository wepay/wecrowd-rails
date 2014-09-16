class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :campaign_id
      t.integer :payer_id
      t.integer :wepay_checkout_id, :limit => 8
      t.integer :wepay_credit_card_id, :limit => 8
      t.integer :amount_cents
      t.integer :app_fee_cents
      t.integer :wepay_fee_cents
      t.string :state
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
