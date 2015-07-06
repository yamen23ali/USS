class Descriptor < ActiveRecord::Base

  has_many :asset_data

  validates :name, :presence => true

  before_save :default_values

  def default_values
    self.active = true if active.nil?
  end

end
