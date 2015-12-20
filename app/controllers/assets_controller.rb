class AssetsController < ApplicationController

  before_action :authenticate_user!
  before_action :set_asset, only: [:show, :edit, :update, :destroy, :destroy_asset_data]

  load_and_authorize_resource
  
  respond_to :html , :json ,:xml

  # GET /assets
  # GET /assets.json
  def index
    @assets = Asset.where(user_id: current_user.id)
  end

  # GET /assets/1
  # GET /assets/1.json
  def show
  end

  # GET /assets/new
  def new
    @asset = Asset.new
    @asset_descriptors = @asset.asset_data.build
    #@asset_photos = @asset.asset_data.build
  end

  # GET /assets/1/edit
  def edit
  end

  # POST /assets
  # POST /assets.json
  def create
    @asset = Asset.new(asset_params.merge( user_id: current_user.id ) )
    if @asset.save
      respond_with @asset, notice: 'Asset was successfully created.'
    else        
      render :new
    end
  end

  # PATCH/PUT /assets/1
  # PATCH/PUT /assets/1.json
  def update
    if @asset.update(asset_params)
      respond_with @asset, notice: 'Asset was successfully updated.'
    else        
      render :edit
    end
  end

  # DELETE /assets/1
  # DELETE /assets/1.json
  def destroy
    @asset.destroy
    redirect_to assets_url, notice: 'Asset was successfully destroyed.'
  end

  # DELETE /assets/1/2
  def destroy_asset_data
    @asset.asset_data.where(id: params[ :asset_data_id ]).destroy_all

    respond_with '{"success":1}'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_asset

      @asset = if current_user.is_admin? 
        Asset.find( params[:id] )
      else
        Asset.where( user_id: current_user.id,id: params[:id] ).first #restrict user access to his own assets
      end

      @asset_descriptors = @asset.descriptors
      @sub_categories = @asset.category.sub_categories
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def asset_params
      params.require(:asset).permit(:category_id, :sub_category_id , :tag_list , asset_data_attributes: [:id, :photo , :descriptor_id , :descriptor_value , :_destroy])
    end
end
