class HomeController < ApplicationController

  respond_to :html

  # GET /home
  def index
  	 @assets = Asset.all
  end
  
end
