class Review < ActiveRecord::Base
  belongs_to :asset
  belongs_to :from , class_name: 'User'
  belongs_to :to , class_name: 'User'

  validates :from , :presence => true
  validates :to , :presence => true
  validates :asset , :presence => true
  validates :content , :presence => true

end
