
require 'rails_helper'

describe Descriptor do
  
  it "Validates presence of name" do
    validate_presence_of(:name)
  end

  it "Has many Asset Data" do
    have_many(:asset_data)
  end

  it "Is Active by default" do
    descriptor=create(:descriptor)
    expect(descriptor.active).to eq(true)
  end
end
