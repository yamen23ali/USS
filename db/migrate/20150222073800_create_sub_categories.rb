class CreateSubCategories < ActiveRecord::Migration
  def change
    create_table :sub_categories do |t|
      t.string :name
      t.references :category, index: true
      t.boolean :active

      t.timestamps
    end
  end
end
