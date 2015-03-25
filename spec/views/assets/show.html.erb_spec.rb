require 'rails_helper'

RSpec.describe "assets/show", :type => :view do
  before(:each) do
    @asset = assign(:asset, Asset.create!(
      :category_id => 1,
      :sub_category_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
