require 'rails_helper'

describe Account  do
  
  it "Validates presence of account name" do
  	validate_presence_of(:name)
  end

  it "Has many users" do
    should have_many(:user)
  end
  
end
