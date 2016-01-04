class MfaChangeTable < ActiveRecord::Migration
  def change
    change_table :mfas do |t|
      t.remove :phone_number, :cookie
      t.integer :wepay_mfa_id
      t.string :type
    end
  end
end
