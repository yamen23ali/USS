require 'rails_helper'

describe Status do
  
  it "Validates presence of name" do
    validate_presence_of(:name)
  end

  it "Has mane Assets" do
  	have_many(:asset)
  end

  it "Has many Offers" do
    have_many(:offer)
  end

end
