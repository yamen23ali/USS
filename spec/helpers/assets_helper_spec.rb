require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the AssetsHelper. For example:
#
# describe AssetsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe AssetsHelper, :type => :helper do

  let(:descriptor) {create(:descriptor , id: 1 , name: "Desc1" )}
  let(:asset) {create(:asset)}
  
  
  it "Get Asset Descriptors Details" do
  	asset_data = create_list(:asset_data, 5 ,asset: asset , descriptor: descriptor )
  	@asset_descriptors = asset.asset_data.select {|data| !data.photo.nil? }
  	expect(helper.get_descriptors_details.count).to eq(5)
  end

  it "Get Asset Category" do
  	category = create(:category)
  	@asset = create(:asset , category: category )
  	expect(helper.category).to eq(category.name)
  end

  it "Get Asset Sub Category" do
  	sub_category = create(:sub_category)
  	@asset = create(:asset , sub_category: sub_category )
  	expect(helper.sub_category).to eq(sub_category.name)
  end

end
