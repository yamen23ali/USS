require 'rails_helper'

RSpec.describe "descriptors/show", :type => :view do
  before(:each) do
    @descriptor = assign(:descriptor, Descriptor.create!(
      :name => "Name",
      :active => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/false/)
  end
end
