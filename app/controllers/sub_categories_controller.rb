class SubCategoriesController < ApplicationController

  before_action :authenticate_user!
  before_action :set_sub_category, only: [:show, :edit, :update, :destroy]
  
  load_and_authorize_resource

  respond_to :html , :json , :xml

  # GET /sub_categories
  # GET /sub_categories.json
  def index
    @sub_categories = SubCategory.all
  end

  # GET /sub_categories/1
  # GET /sub_categories/1.json
  def show
  end

  # GET /sub_categories/new
  def new
    @sub_category = SubCategory.new
  end

  # GET /sub_categories/1/edit
  def edit
  end

  # POST /sub_categories
  # POST /sub_categories.json
  def create
    @sub_category = SubCategory.new(sub_category_params)
    if @sub_category.save
       respond_with @sub_category, notice: 'Sub category was successfully created.'
    else
      render :new 
    end
  end

  # PATCH/PUT /sub_categories/1
  # PATCH/PUT /sub_categories/1.json
  def update
    if @sub_category.update(sub_category_params)
      respond_with @sub_category, notice: 'Sub category was successfully updated.' 
    else
      render :edit 
    end
  end

  # DELETE /sub_categories/1
  # DELETE /sub_categories/1.json
  def destroy
    @sub_category.destroy
    @sub_categories = SubCategory.all
    redirect_to sub_categories_url , notice: 'Sub category was successfully destroyed.' 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sub_category
      @sub_category = SubCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sub_category_params
      params.require(:sub_category).permit(:name, :active, :category_id)
    end
end
