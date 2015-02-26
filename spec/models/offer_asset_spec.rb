require 'rails_helper'

describe OfferAsset do
  it "Validates presence of Offer" do
  	validate_presence_of(:offer)
  end

  it "Validates presence of Asset" do
  	validate_presence_of(:asset)
  end

  it "Belongs to Offer" do
    belong_to(:offer)
  end

  it "Belongs to Asset" do
    belong_to(:asset)
  end

end
