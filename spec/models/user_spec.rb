require 'rails_helper'

describe User do
  
  it "Validates presence of email" do
    validate_presence_of(:email)
  end

  it "Validates presence of password" do
    validate_presence_of(:password)
  end

  it "Belongs to Account" do
    belong_to(:account)
  end

  it "Has many Assets" do
  	have_many(:asset)
  end

  it "Has many Reviews" do
  	have_many(:review)
  end

  it "Has many Offers" do
  	have_many(:offer)
  end

  it "Has account ( 1 ) as default Account " do
    account = create(:account, id: 2)
    user=create(:user)
    expect(user.account.id).to eq(2)
  end
  
end
