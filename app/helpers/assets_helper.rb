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
  	asset_photos = @asset.asset_data.map {|data| data.photo if !data.photo.nil? }
  	
    if !asset_photos.empty?
      asset_photos.first.url(:thumb)
    else
      nil
    end
    
  end

  def existing_photos( photo_index, f )

    if @asset.photos.length > photo_index

      f.fields_for :asset_data , @asset.photos[ photo_index ] do |builder|
        render 'asset_photos_form', :f => builder
      end
    end

  end

  def missing_photo_block( f )

      f.fields_for :asset_data , @asset.asset_data.build do |builder|
        render 'asset_photos_form', :f => builder
      end
  end

  def icon(type)
    
    case type
      when "plus"
        "<span class=\"glyphicon glyphicon-plus\"></span>".html_safe
      when "remove"
        "<span class=\"glyphicon glyphicon-remove\"></span>".html_safe
      else
        "Click Me"
    end

  end

end
