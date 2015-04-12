class AssetData < ActiveRecord::Base
  belongs_to :asset
  belongs_to :descriptor
end
