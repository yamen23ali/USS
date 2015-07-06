require 'rails_helper'

describe SubCategory do
  
  it "Validates presence of name" do
    validate_presence_of(:name)
  end

  it "Validates presence of category" do
  	validate_presence_of(:category)
  end

  it "Belongs to Category" do
    belong_to(:category)
  end

  it "has many Assets" do
    have_many(:asset)
  end

  it "Is active by default" do
    sub_category=create(:sub_category)
    sub_category.save
    expect(sub_category.active).to eq(true)
  end
  
end
