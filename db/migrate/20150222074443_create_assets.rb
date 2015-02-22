class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
      t.references :user, index: true
      t.references :category, index: true
      t.references :sub_category, index: true
      t.references :status, index: true

      t.timestamps
    end
  end
end
