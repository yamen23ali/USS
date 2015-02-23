require 'rails_helper'

describe Account  do
  
  it "is" do
      acc = create(:account)
      expect(acc.name).to eq("dd")
   end
end
