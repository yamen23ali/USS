class RenameMetaDataIdColumn < ActiveRecord::Migration
  def change
  	rename_column :asset_data , :meta_data_id , :descriptor_id
  end
end
