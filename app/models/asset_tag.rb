class AssetTag < ActiveRecord::Base
  belongs_to :asset
  belongs_to :tag

  validates :asset_id, :presence => true
  validates :tag_id, :presence => true

end
