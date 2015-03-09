class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable ,:confirmable ,:lockable

  belongs_to :account
  has_many :asset
  has_many :review
  has_many :offer

  before_save :default_values

  validates_email_format_of :contact_email, :message => 'is not looking good'

  def default_values
    self.account_id ||= 2
  end

  def role
    self.account.name.underscore.to_sym
  end

  def is_admin?
     role==:admin ? true :false 
  end

end
