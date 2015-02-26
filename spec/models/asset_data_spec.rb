require 'rails_helper'

describe AssetData do
  
  it "Validates Asset presence" do
    validate_presence_of(:asset_id)
  end

  it "Belongs to asset" do
  	belong_to(:asset)
  end

  it "Belongs to meta data" do
    belong_to(:meta_data)
  end
  
end
