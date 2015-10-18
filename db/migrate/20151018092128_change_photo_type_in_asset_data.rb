class ChangePhotoTypeInAssetData < ActiveRecord::Migration
  
  include Paperclip::Schema
  
  def up
    add_attachment :asset_data, :photo
  end

  def down
    remove_attachment :asset_data, :photo
  end
end
