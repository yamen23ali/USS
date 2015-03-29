class Asset < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  belongs_to :sub_category
  belongs_to :status
  has_many :asset_data , :dependent => :destroy
  has_many :asset_tag
  has_many :tag, :through => :asset_tag
  has_many :review
  has_many :offer_asset
  has_many :offer , :through => :offer_asset

  validates :user, :presence => true
  validates :category, :presence => true

  accepts_nested_attributes_for :asset_data , :reject_if => :reject_asset_data , :allow_destroy => true

  before_save :default_values

  def default_values
    self.status_id |= 1
    self.sub_category_id = nil if self.sub_category_id == 0
  end

  def reject_asset_data(attributes)
    attributes['descriptor_id'].blank? && attributes['photo'].blank?
  end
  
end
