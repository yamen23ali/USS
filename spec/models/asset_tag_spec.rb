require 'rails_helper'

describe AssetTag do
  
  it "Validates presence of Asset" do
    validate_presence_of(:asset)
  end

  it "Validates presence of Tag" do
    validate_presence_of(:tag)
  end
  
  it "Belongs to Asset" do
    belong_to(:asset)
  end

  it "Belongs to Tag" do
    belong_to(:tag)
  end


end
