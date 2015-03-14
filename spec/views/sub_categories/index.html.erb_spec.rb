require 'rails_helper'

RSpec.describe "sub_categories/index", :type => :view do
  before(:each) do
    @category = create(:category)
    @sub_categories = [ create(:sub_category , :name => "Sub Category Test" ,
                           :active => false, :category_id => @category.id ) , 
                        create(:sub_category , :name => "Sub Category Test" ,
                           :active => false, :category_id => @category.id )
                      ]
  end

  it "renders a list of sub_categories" do
    render
    assert_select "tr>td", :text => "Sub Category Test".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "#{@category.name}".to_s, :count => 2
  end
end
