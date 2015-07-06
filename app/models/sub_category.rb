class SubCategory < ActiveRecord::Base

  belongs_to :category
  has_many :asset

  validates :name, :presence => true
  validates :category , :presence => true

  before_save :default_values

  def default_values
  	self.active = true if active.nil?
  end

end
