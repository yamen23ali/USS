class Status < ActiveRecord::Base
	has_many :asset
	has_many :offer

	validates :name, :presence => true
	
end
