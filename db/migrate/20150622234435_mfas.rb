class Mfas < ActiveRecord::Migration
  def self.up
    create_table :mfas do |t|
      t.integer :user_id
      t.string :nickname
      t.string :cookie
      t.string :phone_number
      t.string :state
    end
  end
end
