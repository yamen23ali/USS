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

  def descriptors
    @asset.descriptors.map { |descriptor|

      "#{Descriptor.find(descriptor.descriptor_id).name} : #{descriptor.descriptor_value||=""}"
    }
  end

  def tags
    @asset.tags.map{ |tag| 
      "##{tag.name}"
    }.join(' ')
  end

  def asset_preview
    if !@asset.photos.empty?
      @asset.photos.first.photo.url(:thumb) 
    else
      "mine/missing100.png"
    end
  end

  def existing_photos( photo_index, f )
    f.fields_for :asset_data , @asset.photos[ photo_index ] do |builder|
      render 'asset_photos_form', :f => builder
    end
  end

  def missing_photo_block( f )
    f.fields_for :asset_data , @asset.asset_data.build do |builder|
      render 'asset_photos_form', :f => builder
    end
  end

end
