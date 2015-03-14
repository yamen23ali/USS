require 'rails_helper'

RSpec.describe "descriptors/show", :type => :view do
  before(:each) do
    @descriptor = create(:descriptor, :name => "Test Descriptor" , :active => false) 
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Test Descriptor/)
    expect(rendered).to match(/false/)
  end
end
