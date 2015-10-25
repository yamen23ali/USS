class RemovePhotoFromAssetData < ActiveRecord::Migration
  def change
    remove_column :asset_data, :photo, :string
  end
end
