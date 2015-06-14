require 'rails_helper'

RSpec.describe "assets/show", :type => :view do
  before(:each) do
    @asset = assign(:asset, create(:asset))
    @asset_descriptors = []
    @asset_photos = []
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
  end
end
