require 'rails_helper'

describe SubCategory do
  
  it "Belongs To Category" do
    cat=create(:category)
    sub_cat=create(:sub_category , category: cat)
    expect(cat.name).to eq(sub_cat.category.name)
  end

end
