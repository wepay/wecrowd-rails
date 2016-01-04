class AddCheckoutType < ActiveRecord::Migration
  def change
    add_column :users, :checkout_method, :string
  end
end
