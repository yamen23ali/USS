require 'rails_helper'

RSpec.describe "sub_categories/show", :type => :view do
  before(:each) do
    @category = create(:category)
    @sub_category = create(:sub_category , :name => "Sub Category Test" ,
                           :active => false, :category_id => @category.id )
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Sub Category Test/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/#{@category.name}/)
  end
end
