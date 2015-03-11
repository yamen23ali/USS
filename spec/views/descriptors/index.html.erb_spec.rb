require 'rails_helper'

RSpec.describe "descriptors/index", :type => :view do
  before(:each) do
    assign(:descriptors, [
      Descriptor.create!(
        :name => "Name",
        :active => false
      ),
      Descriptor.create!(
        :name => "Name",
        :active => false
      )
    ])
  end

  it "renders a list of descriptors" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
