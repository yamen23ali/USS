module OffersHelper

	def checked
		@offer.asset.pluck(:id).include?(@asset.id) ? "checked" : ""
	end
end
