require 'rails_helper'

describe Offer do

  it "Validates presence of From user" do
    validate_presence_of(:from)
  end

  it "Validates presence of To user" do
    validate_presence_of(:to)
  end

  it "Validates presence of Status" do
    validate_presence_of(:status)
  end
  
  it "Belongs to Status" do 
    belong_to(:status)
  end

  it "Belongs to From User" do 
    belong_to(:from)
  end

  it "Belongs to To User" do 
    belong_to(:to)
  end

  it "Has many Offer Assets" do
  	have_many(:offer_asset)
  end

  it "Has many Assets" do
    have_many(:asset).through(:offer_asset)
  end

end
