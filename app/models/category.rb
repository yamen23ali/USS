class Category < ActiveRecord::Base

  has_many :sub_category , :dependent => :delete_all
  has_many :asset
  
  validates :name, :presence => true

  before_save :default_values

  def default_values
    active = true if active.nil?
  end

end
