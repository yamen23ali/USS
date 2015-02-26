require 'rails_helper'

describe MetaData do
  
  it "Validates presence of name" do
    validate_presence_of(:name)
  end

  it "Has many Asset Data" do
    have_many(:asset_data)
  end

  it "Is Active by default" do
    meta_data=create(:meta_data)
    expect(meta_data.active).to eq(true)
  end
end
