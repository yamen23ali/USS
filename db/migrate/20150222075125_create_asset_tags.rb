class CreateAssetTags < ActiveRecord::Migration
  def change
    create_table :asset_tags do |t|
      t.references :asset, index: true
      t.references :tag, index: true

      t.timestamps
    end
  end
end
