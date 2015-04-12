class CategoriesController < ApplicationController

  before_action :authenticate_user!
  before_action :set_category, only: [:show, :edit, :update, :destroy]
  
  load_and_authorize_resource

  respond_to :html , :json , :xml

  # GET /categories
  # GET /categories.json
  def index
    @categories = Category.all
  end

  # GET /categories/1
  # GET /categories/1.json
  def show
  end

  # GET /categories/new
  def new
    @category = Category.new
  end

  # GET /categories/1/edit
  def edit
  end

  # POST /categories
  # POST /categories.json
  def create
    @category = Category.new(category_params)
    if @category.save
      respond_with @category, notice: 'Category was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /categories/1
  # PATCH/PUT /categories/1.json
  def update
    if @category.update(category_params)
      
      SubCategory.where(category_id: @category.id).update_all(active: @category.active)
      respond_with @category, notice: 'Category was successfully updated.'
    else
       render :edit
    end
  end

  # DELETE /categories/1
  # DELETE /categories/1.json
  def destroy
    @category.destroy
    redirect_to categories_url, notice: 'Category was successfully destroyed.'
  end

  def sub_categories
    render :json => SubCategory.where(category_id: params[:id], active: true)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_params
      params.require(:category).permit(:name, :active)
    end
end
