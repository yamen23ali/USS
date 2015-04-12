require 'rails_helper'

RSpec.describe "asset_data/index", :type => :view do
  before(:each) do
    assign(:asset_data, [
      AssetData.create!(
        :descriptor_id => 1,
        :descriptor_value => "Descriptor Value",
        :photo => "Photo"
      ),
      AssetData.create!(
        :descriptor_id => 1,
        :descriptor_value => "Descriptor Value",
        :photo => "Photo"
      )
    ])
  end

  it "renders a list of asset_data" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Descriptor Value".to_s, :count => 2
    assert_select "tr>td", :text => "Photo".to_s, :count => 2
  end
end
