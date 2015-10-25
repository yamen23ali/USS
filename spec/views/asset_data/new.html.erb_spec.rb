require 'rails_helper'

RSpec.describe "asset_data/new", :type => :view do
  before(:each) do
    assign(:asset_data, AssetData.new(
      :descriptor_id => 1,
      :descriptor_value => "MyString",
    ))
  end

  it "renders new asset_data form" do
    render

    assert_select "form[action=?][method=?]", asset_data_index_path, "post" do

      assert_select "input#asset_data_descriptor_id[name=?]", "asset_data[descriptor_id]"

      assert_select "input#asset_data_descriptor_value[name=?]", "asset_data[descriptor_value]"

      assert_select "input#asset_data_photo[name=?]", "asset_data[photo]"
    end
  end
end
