class AssetTag < ActiveRecord::Base
  belongs_to :asset
  belongs_to :tag

  validates :asset , :presence => true
  validates :tag , :presence => true

end
