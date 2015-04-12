class AssetDataController < ApplicationController
  
  before_action :authenticate_user!
  before_action :set_asset_data, only: [:show, :edit, :update, :destroy]

  respond_to :json , :html , :xml

  load_and_authorize_resource

  # GET /asset_data
  # GET /asset_data.json
  def index
    @asset_data = AssetData.all
  end

  # GET /asset_data/1
  # GET /asset_data/1.json
  def show
  end

  # GET /asset_data/new
  def new
    @asset_data = AssetData.new
  end

  # GET /asset_data/1/edit
  def edit
  end

  # POST /asset_data
  # POST /asset_data.json
  def create
    @asset_data = AssetData.new(asset_data_params)
    if @asset_data.save
        respond_with @asset_data, notice: 'Asset data was successfully created.'
    else
        render :new
    end
  end

  # PATCH/PUT /asset_data/1
  # PATCH/PUT /asset_data/1.json
  def update
    if @asset_data.update(asset_data_params)
      respond_with @asset_data, notice: 'Asset data was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /asset_data/1
  # DELETE /asset_data/1.json
  def destroy
    @asset_data.destroy
    redirect_to asset_data_index_url, notice: 'Asset data was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_asset_data
      @asset_data = AssetData.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def asset_data_params
      params.require(:asset_data).permit(:descriptor_id, :descriptor_value, :photo)
    end
end
