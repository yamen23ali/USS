require 'rails_helper'

RSpec.describe "users/new", :type => :view do
  before(:each) do
    assign(:user, User.new(
      :first_name => "MyString",
      :last_name => "MyString",
      :tel => "MyString",
      :mobile => "MyString",
      :address => "MyString",
      :contact_email => "MyString",
      :facebook => "MyString",
      :twitter => "MyString",
      :instagram => "MyString",
      :photo => "MyString"
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "input#user_first_name[name=?]", "user[first_name]"

      assert_select "input#user_last_name[name=?]", "user[last_name]"

      assert_select "input#user_tel[name=?]", "user[tel]"

      assert_select "input#user_mobile[name=?]", "user[mobile]"

      assert_select "input#user_address[name=?]", "user[address]"

      assert_select "input#user_contact_email[name=?]", "user[contact_email]"

      assert_select "input#user_facebook[name=?]", "user[facebook]"

      assert_select "input#user_twitter[name=?]", "user[twitter]"

      assert_select "input#user_instagram[name=?]", "user[instagram]"

      assert_select "input#user_photo[name=?]", "user[photo]"
    end
  end
end
