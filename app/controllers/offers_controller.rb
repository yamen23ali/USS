class OffersController < ApplicationController
  
  before_action :authenticate_user!
  before_action :set_offer, only: [:show, :edit, :update, :destroy,:choose_assets]

  load_and_authorize_resource
  
  respond_to :html , :json ,:xml

  # GET /offers
  # GET /offers.json
  def index
    @offers = Offer.where(from_id: current_user.id)
  end

  # GET /offers/1
  # GET /offers/1.json
  def show
  end

  # GET /offers/new
  def new
    @offer = Offer.new
    @users = User.users_list
  end

  # GET /offers/1/edit
  def edit
    #binding.pry
    render :choose_assets
  end

  # POST /offers
  # POST /offers.json
  def create
    @offer = Offer.new(offer_params.merge( from_id: current_user.id , status_id: 1 ))
    if @offer.save
      render :choose_assets , :params => params
    else        
      render :new
    end
  end

  # PATCH/PUT /offers/1
  # PATCH/PUT /offers/1.json
  def update
    if @offer.update(offer_params)
      respond_with @asset, notice: 'Asset was successfully updated.'
    else        
      render :edit
    end
  end

  # DELETE /offers/1
  # DELETE /offers/1.json
  def destroy
    @offer.destroy
    redirect_to offers_url, notice: 'Asset was successfully destroyed.'
  end

  def choose_assets
    @offer.choosed_assets = params[:offer][:choosed_assets]
    redirect_to action: "index"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_offer
      @offer = Offer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def offer_params
      params.require(:offer).permit(:to_id,:id,choosed_assets:[])
    end
end
