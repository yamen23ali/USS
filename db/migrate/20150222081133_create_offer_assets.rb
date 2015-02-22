class CreateOfferAssets < ActiveRecord::Migration
  def change
    create_table :offer_assets do |t|
      t.references :offer, index: true
      t.references :asset

      t.timestamps
    end
  end
end
