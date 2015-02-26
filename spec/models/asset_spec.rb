require 'rails_helper'

describe Asset do
  
  it "Validates User prersence" do
  	validate_presence_of(:user)
  end

  it "Validates Status prersence" do
    validate_presence_of(:status)
  end

  it "Validates Category prersence" do
    validate_presence_of(:category)
  end

  it "Belongs to User" do
    belong_to(:user)
  end

  it "Belongs to Category" do
    belong_to(:category)
  end

  it "Belongs to Status" do
    belong_to(:status)
  end

  it "Belongs to Sub Category" do
    belong_to(:sub_category)
  end

  it "Has many Asset Data" do
    have_many(:asset_data)
  end

  it "Has many Asset Tags" do
    have_many(:asset_tag)
  end

  it "Has many Reviews" do
    have_many(:review)
  end

  it "Has many Offer Assets" do
    have_many(:offer_asset)
  end

  it "Has many Tags" do
    have_many(:tag).through(:asset_tag)
  end

  it "Has many Offers" do
    have_many(:offer).through(:offer_asset)
  end

end
