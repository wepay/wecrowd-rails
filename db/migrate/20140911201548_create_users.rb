class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, :default => '', :null => false
      t.string :email, :default => '', :null => false
      t.string :password_hash
      t.string :wepay_access_token
      t.integer :wepay_account_id, :limit => 8
      t.integer :wepay_user_id, :limit => 8
      t.integer :role, :limit => 1, :default => 0, :null => false
      t.datetime :deleted_at

      t.timestamps
    end
    add_index :users, :email
    add_index :users, :deleted_at
  end
end
