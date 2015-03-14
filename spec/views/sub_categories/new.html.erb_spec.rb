require 'rails_helper'

RSpec.describe "sub_categories/new", :type => :view do
  before(:each) do
    @sub_category = SubCategory.new
  end

  it "renders new sub_category form" do
    render

    assert_select "form[action=?][method=?]", sub_categories_path, "post" do

      assert_select "input#sub_category_name[name=?]", "sub_category[name]"

      assert_select "input#sub_category_active[name=?]", "sub_category[active]"

      assert_select "select#sub_category_category_id[name=?]", "sub_category[category_id]"
    end
  end
end
