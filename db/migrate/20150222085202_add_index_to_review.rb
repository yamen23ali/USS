class AddIndexToReview < ActiveRecord::Migration
  def change
  	add_index :reviews, :from_id
  	add_index :reviews, :to_id
  end
end
