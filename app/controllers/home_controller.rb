class HomeController < ApplicationController

  respond_to :html

  # GET /home
  def index

  	result = nil

  	if !asset_params[:tag_list].blank?
  		result = Asset.tagged_with( asset_params[:tag_list].split(" "), :any => true).order(:updated_at)
    else
    	result = Asset.order(:updated_at)
  	end

  	if !asset_params[:category_id].blank?
  		result = result.where( category_id: asset_params[:category_id] )
  	end

  	if !asset_params[:sub_category_id].blank?
  		result = result.where( sub_category_id: asset_params[:sub_category_id] )
  	end
  	 @assets = result.page params[:page]
  end

  def asset_params
  	params.key?(:asset) ? params.require(:asset) : params
  end
  
end
