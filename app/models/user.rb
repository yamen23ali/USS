class User < ActiveRecord::Base
  
  belongs_to :account
  has_many :asset
  has_many :review
  has_many :offer
  
  validates :registration_email, :presence => true
  validates :password, :presence => true

  before_save :default_values
  

  def default_values
    self.account_id ||= 1
  end

end
