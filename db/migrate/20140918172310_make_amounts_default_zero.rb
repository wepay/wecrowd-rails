class MakeAmountsDefaultZero < ActiveRecord::Migration
  def change
    change_column :campaigns, :amount_donated, :integer, :default => 0, :null => false
    change_column :payments, :amount_cents, :integer, :default => 0, :null => false
    change_column :payments, :app_fee_cents, :integer, :default => 0, :null => false
    change_column :payments, :wepay_fee_cents, :integer, :default => 0, :null => false
  end
end
