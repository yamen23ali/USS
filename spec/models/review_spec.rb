require 'rails_helper'

describe Review  do
  
  it "Validates presence of From user" do
    validate_presence_of(:from)
  end

  it "Validates presence of To user" do
    validate_presence_of(:to)
  end

  it "Validates presence of Asset" do
    validate_presence_of(:asset)
  end

  it "Validates presence of Content" do
    validate_presence_of(:content)
  end

  it "Belongs to From User" do 
    belong_to(:from)
  end

  it "Belongs to To User" do 
    belong_to(:to)
  end

  it "Belongs to Asset" do
  	belong_to(:asset)
  end
  
end
