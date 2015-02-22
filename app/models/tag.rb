class Tag < ActiveRecord::Base
  has_many :asset_tag
  has_many :asset, :through => :asset_tag

  validates :name, :presence => true
end
