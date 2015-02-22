class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :from_id
      t.integer :to_id
      t.references :asset, index: true
      t.string :content

      t.timestamps
    end
  end
end
