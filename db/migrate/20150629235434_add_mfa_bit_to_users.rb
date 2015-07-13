class AddMfaBitToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.boolean :wants_MFA_enabled
    end
  end
end
