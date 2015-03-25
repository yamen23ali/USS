module AssetsHelper

	def link_to_add_fields(f)
	  
	  f.fields_for :asset_data , AssetData.new do |builder| 
        render 'asset_data_fields', :f => builder 
      end

	end

end
