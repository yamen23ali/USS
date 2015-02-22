class AddIndexToOffer < ActiveRecord::Migration
  def change
  	add_index :offers, :from_id
  	add_index :offers, :to_id
  end
end
