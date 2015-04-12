require 'rails_helper'

RSpec.describe "asset_data/show", :type => :view do
  before(:each) do
    @asset_data = assign(:asset_data, AssetData.create!(
      :descriptor_id => 1,
      :descriptor_value => "Descriptor Value",
      :photo => "Photo"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Descriptor Value/)
    expect(rendered).to match(/Photo/)
  end
end
