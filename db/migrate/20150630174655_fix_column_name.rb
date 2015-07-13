class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :mfas, :type, :mfa_type
  end
end
