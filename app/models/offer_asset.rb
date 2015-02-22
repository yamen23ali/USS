class OfferAsset < ActiveRecord::Base
  belongs_to :offer
  belongs_to :asset

  validates :offer_id, :presence => true
  validates :asset_id, :presence => true
  
end
