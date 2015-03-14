require 'rails_helper'

RSpec.describe "categories/index", :type => :view do
  before(:each) do
    @categories = [ create(:category , name: "Name" , active: false) , 
                    create(:category , name: "Name" , active: false)
                  ]
  end

  it "renders a list of categories" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
