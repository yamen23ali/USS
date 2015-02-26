class Offer < ActiveRecord::Base
  belongs_to :status
  belongs_to :from , class_name: 'User'
  belongs_to :to , class_name: 'User'
  has_many :offer_asset
  has_many :asset , :through => :offer_asset

  validates :from , :presence => true
  validates :to , :presence => true
  validates :status , :presence => true
end
