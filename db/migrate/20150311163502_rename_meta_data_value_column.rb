class RenameMetaDataValueColumn < ActiveRecord::Migration
  def change
  	rename_column :asset_data , :meta_data_value , :descriptor_value
  end
end
