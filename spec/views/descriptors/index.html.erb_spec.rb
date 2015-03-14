require 'rails_helper'

RSpec.describe "descriptors/index", :type => :view do
  before(:each) do
    @descriptors = [ create(:descriptor, :name => "Test Descriptor", :active => false) ,
                     create(:descriptor, :name => "Test Descriptor", :active => false) 
                   ]
  end

  it "renders a list of descriptors" do
    render
    assert_select "tr>td", :text => "Test Descriptor".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
