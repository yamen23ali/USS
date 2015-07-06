require 'rails_helper'

RSpec.describe "assets/edit", :type => :view do
  before(:each) do
    @asset = assign(:asset, create(:asset))
  end

  it "renders the edit asset form" do
    render
    assert_select "form[method=?]", "post" do

      assert_select "select#asset_category_id[name=?]", "asset[category_id]"

      assert_select "select#asset_sub_category_id[name=?]", "asset[sub_category_id]"
    end
  end
end
