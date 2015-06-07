class Offer < ActiveRecord::Base
  belongs_to :status
  belongs_to :from , class_name: 'User'
  belongs_to :to , class_name: 'User'
  has_many :offer_asset
  has_many :asset , :through => :offer_asset

  validates :from , :presence => true
  validates :to , :presence => true
  validates :status , :presence => true

  def given_assets
  	assets.where('assets.user_id' => from.id)
  end

  def received_assets
  	assets.where.not('assets.user_id' => to.id)
  end

  def from_assets
  	Asset.where(user_id: from.id)
  end

  def to_assets
  	Asset.where(user_id: to.id)
  end

  def choosed_assets
  end

  def choosed_assets=(assets)
    asset.destroy_all
    assets.each do |asset_id|
      OfferAsset.create(offer_id: id, asset_id: asset_id)
    end
  end

end
