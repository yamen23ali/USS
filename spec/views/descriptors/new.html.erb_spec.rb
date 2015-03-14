require 'rails_helper'

RSpec.describe "descriptors/new", :type => :view do
  before(:each) do
    @descriptor = Descriptor.new
  end

  it "renders new descriptor form" do
    render

    assert_select "form[action=?][method=?]", descriptors_path, "post" do

      assert_select "input#descriptor_name[name=?]", "descriptor[name]"

      assert_select "input#descriptor_active[name=?]", "descriptor[active]"
    end
  end
end
