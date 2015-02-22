class Category < ActiveRecord::Base

  has_many :sub_category
  has_many :asset
  
  validates :name, :presence => true

  before_save :default_values

  def default_values
    self.active ||= true
  end

end
