class Offer < ActiveRecord::Base
  belongs_to :status
  belongs_to :from , class_name: 'User'
  belongs_to :to , class_name: 'User'
  has_many :offer_asset , :dependent => :destroy
  has_many :asset , :through => :offer_asset

  validates :from , :presence => true
  validates :to , :presence => true
  validates :status , :presence => true

  state_machine :state, :initial => :new do

    event :edit do
      transition [:new] => :pending
      transition [:pending] => :updated
    end

    event :seen do
      transition [:updated] => :pending
    end

    event :accept do
      transition [:pending, :updated] => :accepted
    end

    event :reject do
      transition [:pending, :updated] => :rejected
    end

    event :cancel do
      transition [:new] => :cancelled
    end

  end

  def given_assets
  	asset.where('assets.user_id' => from.id)
  end

  def received_assets
  	asset.where('assets.user_id' => to.id)
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
