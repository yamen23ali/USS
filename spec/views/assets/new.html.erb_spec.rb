require 'rails_helper'

RSpec.describe "assets/new", :type => :view do
  before(:each) do
    assign(:asset, Asset.new(
      :category_id => 1,
      :sub_category_id => 1
    ))
  end

  it "renders new asset form" do
    render

    assert_select "form[action=?][method=?]", assets_path, "post" do

      assert_select "input#asset_category_id[name=?]", "asset[category_id]"

      assert_select "input#asset_sub_category_id[name=?]", "asset[sub_category_id]"
    end
  end
end
