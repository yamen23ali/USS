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

  validates :user, :presence => true
  validates :category, :presence => true

  accepts_nested_attributes_for :asset_data , :allow_destroy => true

  before_save :default_values

  def default_values
    status |= 1
    binding.pry
    sub_category_id = nil if sub_category_id == 0
  end
  
end
