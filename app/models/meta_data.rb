class MetaData < ActiveRecord::Base

  has_many :asset_data

  validates :name, :presence => true

  def default_values
    self.active ||= true
  end

end
