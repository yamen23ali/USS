require 'rails_helper'

RSpec.describe "categories/new", :type => :view do
  before(:each) do
    @category = Category.new
  end

  it "renders new category form" do
    render

    assert_select "form[action=?][method=?]", categories_path, "post" do

      assert_select "input#category_name[name=?]", "category[name]"

      assert_select "input#category_active[name=?]", "category[active]"
    end
  end
end
