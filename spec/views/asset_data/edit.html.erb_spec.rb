require 'rails_helper'

RSpec.describe "asset_data/edit", :type => :view do
  before(:each) do
    @asset_data = assign(:asset_data, AssetData.create!(
      :descriptor_id => 1,
      :descriptor_value => "MyString",
      :photo => "MyString"
    ))
  end

  it "renders the edit asset_data form" do
    render

    assert_select "form[action=?][method=?]", asset_data_path(@asset_data), "post" do

      assert_select "input#asset_data_descriptor_id[name=?]", "asset_data[descriptor_id]"

      assert_select "input#asset_data_descriptor_value[name=?]", "asset_data[descriptor_value]"

      assert_select "input#asset_data_photo[name=?]", "asset_data[photo]"
    end
  end
end
