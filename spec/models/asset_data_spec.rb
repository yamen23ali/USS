require 'rails_helper'

describe AssetData do
  
  it "Validates Asset presence" do
    validate_presence_of(:asset_id)
  end

  it "Belongs to asset" do
  	belong_to(:asset)
  end

  it "Belongs to descriptor" do
    belong_to(:descriptor)
  end
  
end
