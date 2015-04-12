class DropAssetTagsTable < ActiveRecord::Migration
  def up  
  	drop_table :asset_tags
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
