class RenamePromotedToFeatured < ActiveRecord::Migration
  def change
    rename_column :campaigns, :promoted, :featured
  end
end
