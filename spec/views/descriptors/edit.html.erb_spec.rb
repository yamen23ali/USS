require 'rails_helper'

RSpec.describe "descriptors/edit", :type => :view do
  before(:each) do
    @descriptor = create(:descriptor, :name => "Test Descriptor", :active => false)
  end

  it "renders the edit descriptor form" do
    render

    assert_select "form[action=?][method=?]", descriptor_path(@descriptor), "post" do

      assert_select "input#descriptor_name[name=?]", "descriptor[name]"

      assert_select "input#descriptor_active[name=?]", "descriptor[active]"
    end
  end
end
