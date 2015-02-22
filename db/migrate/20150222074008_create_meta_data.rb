class CreateMetaData < ActiveRecord::Migration
  def change
    create_table :meta_data do |t|
      t.string :name
      t.boolean :active

      t.timestamps
    end
  end
end
