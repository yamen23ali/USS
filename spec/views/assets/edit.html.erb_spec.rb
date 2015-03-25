require 'rails_helper'

RSpec.describe "assets/edit", :type => :view do
  before(:each) do
    @asset = assign(:asset, Asset.create!(
      :category_id => 1,
      :sub_category_id => 1
    ))
  end

  it "renders the edit asset form" do
    render

    assert_select "form[action=?][method=?]", asset_path(@asset), "post" do

      assert_select "input#asset_category_id[name=?]", "asset[category_id]"

      assert_select "input#asset_sub_category_id[name=?]", "asset[sub_category_id]"
    end
  end
end
