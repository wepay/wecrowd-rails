class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.integer :user_id
      t.string :name
      t.text :description
      t.integer :goal
      t.integer :amount_donated
      t.string :account_type
      t.boolean :state, :limit => 1
      t.integer :promoted
      
      t.timestamps
    end
    
    add_index :campaigns, :user_id
    add_index :campaigns, :promoted
  end
end
