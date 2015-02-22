class AssetData < ActiveRecord::Base
  belongs_to :asset
  belongs_to :meta_data

  validates :asset_id, :presence => true

end
