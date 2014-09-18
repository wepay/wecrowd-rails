class RenameAmountDonated < ActiveRecord::Migration
  def change
    rename_column :campaigns, :amount_donated, :amount_donated_cents
  end
end
