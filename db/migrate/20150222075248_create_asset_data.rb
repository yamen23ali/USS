class CreateAssetData < ActiveRecord::Migration
  def change
    create_table :asset_data do |t|
      t.references :asset, index: true
      t.references :meta_data
      t.string :meta_data_value
      t.string :photo

      t.timestamps
    end
  end
end
