class OfferAsset < ActiveRecord::Base
  belongs_to :offer
  belongs_to :asset

  validates :offer , :presence => true
  validates :asset , :presence => true
  
end
