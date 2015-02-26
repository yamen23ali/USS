require 'rails_helper'

describe Tag do
  
  it "Validates presence of name" do
    validate_presence_of(:name)
  end

  it "Has many Asset Tags" do
    have_many(:asset_tag)
  end

  it "Has many Assets" do
    have_many(:asset).through(:asset_tag)
  end
  
end
