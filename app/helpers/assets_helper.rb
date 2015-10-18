module AssetsHelper
  
  def get_descriptors_details
  	@asset_descriptors.map do |descriptor|
  		{ 
  		  name: Descriptor.find(descriptor.descriptor_id).name , 
  		  value: descriptor.descriptor_value||=""
  		}
  	end
  end

  def category
  	Category.find(@asset.category_id).name
  end

  def sub_category
  	SubCategory.find(@asset.sub_category_id).name unless @asset.sub_category_id.nil?
  end

  def asset_preview
  	asset_photos = @asset.asset_data.map {|data| data.photo if !data.photo.nil? }.compact << "default path"
  	asset_photos.first.url(:thumb)
  end

end
