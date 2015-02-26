require 'rails_helper'

describe Category do
  
  it "Validates presence of name" do
    validate_presence_of(:name)
  end

  it "Has many Assets" do
    have_many(:asset)
  end

  it "Has many Sub Categories" do
    have_many(:sub_category)
  end

  it "Is Active by default" do
  	category=create(:category)
  	expect(category.active).to eq(true)
  end

end
