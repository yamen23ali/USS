require 'rails_helper'

RSpec.describe "sub_categories/edit", :type => :view do
  before(:each) do
    @sub_category = assign(:sub_category, SubCategory.create!(
      :name => "MyString",
      :active => false,
      :category_id => ""
    ))
  end

  it "renders the edit sub_category form" do
    render

    assert_select "form[action=?][method=?]", sub_category_path(@sub_category), "post" do

      assert_select "input#sub_category_name[name=?]", "sub_category[name]"

      assert_select "input#sub_category_active[name=?]", "sub_category[active]"

      assert_select "input#sub_category_category_id[name=?]", "sub_category[category_id]"
    end
  end
end
