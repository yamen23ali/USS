module OffersHelper

  def checked
  	@offer.asset.pluck(:id).include?(@asset.id) ? "checked" : ""
  end

  def render_asset_info(asset)
  	@asset = asset
  	render :partial => 'assets/asset_info'
  end

  def get_caption()
  	 if @offer.state == "new"
  	 	"Create"
  	 else
  	 	"Update"
  	 end
  end

end
