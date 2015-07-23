class AddPaymentType < ActiveRecord::Migration
  def change
    add_column :payments, :payment_type, :string
  end
end
