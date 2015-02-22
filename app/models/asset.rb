class Asset < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  belongs_to :sub_category
  belongs_to :status
  has_many :asset_data
  has_many :asset_tag
  has_many :tag, :through => :asset_tag
  has_many :review
  has_many :offer_asset
  has_many :offer , :through => :offer_asset

  validates :user_id, :presence => true
  validates :status_id, :presence => true
  validates :category_id, :presence => true
  
end
