class AddCurrencyAndCountryColumns < ActiveRecord::Migration
  def change
    add_column :users, :country, :string, :after => :email
    add_column :payments, :currency, :string, :after => :wepay_credit_card_id
  end
end
