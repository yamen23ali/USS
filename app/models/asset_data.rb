class AssetData < ActiveRecord::Base
  belongs_to :asset
  belongs_to :descriptor

  has_attached_file :photo, styles: { medium: "200x200>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/
  
end
