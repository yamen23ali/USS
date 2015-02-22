class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.integer :from_id
      t.integer :to_id
      t.references :status, index: true

      t.timestamps
    end
  end
  add_index :offers, :from_id
end
