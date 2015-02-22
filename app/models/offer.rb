class Offer < ActiveRecord::Base
  belongs_to :status
  belongs_to :from , class_name: 'User'
  belongs_to :to , class_name: 'User'
  has_many :offer_asset
  has_many :asset , :through => :offer_asset

  validates :from_id, :presence => true
  validates :to_id, :presence => true
  validates :status_id, :presence => true
end
