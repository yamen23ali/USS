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

  def contact_email(offer, user)

    if offer.state == "accepted"
        user.contact_email.blank? ? user.email : user.contact_email
    else
        "Hidden until the offer is accepted"
     end
  end

end
