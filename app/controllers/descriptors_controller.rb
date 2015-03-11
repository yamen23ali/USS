class DescriptorsController < ApplicationController

  before_action :authenticate_user!
  before_action :set_descriptor, only: [:show, :edit, :update, :destroy]

  load_and_authorize_resource

  respond_to :html , :json , :xml

  # GET /descriptors
  # GET /descriptors.json
  def index
    @descriptors = Descriptor.all
  end

  # GET /descriptors/1
  # GET /descriptors/1.json
  def show
  end

  # GET /descriptors/new
  def new
    @descriptor = Descriptor.new
  end

  # GET /descriptors/1/edit
  def edit
  end

  # POST /descriptors
  # POST /descriptors.json
  def create
    @descriptor = Descriptor.new(descriptor_params)
    if @descriptor.save
      respond_with @descriptor, notice: 'Descriptor was successfully created.'    
    else
      render :new   
    end
  end

  # PATCH/PUT /descriptors/1
  # PATCH/PUT /descriptors/1.json
  def update
    if @descriptor.update(descriptor_params)
      respond_with @descriptor, notice: 'Descriptor was successfully updated.'   
    else
      render :edit      
    end
  end

  # DELETE /descriptors/1
  # DELETE /descriptors/1.json
  def destroy
    @descriptor.destroy
    redirect_to descriptors_url, notice: 'Descriptor was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_descriptor
      @descriptor = Descriptor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def descriptor_params
      params.require(:descriptor).permit(:name, :active)
    end
end
