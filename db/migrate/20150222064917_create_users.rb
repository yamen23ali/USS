class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :registration_email
      t.string :password
      t.references :account , index: true
      t.string :first_name, limit: 30
      t.string :last_name, limit: 30
      t.string :address
      t.string :tel, limit: 20
      t.string :mobile, limit: 20
      t.string :contact_email
      t.string :facebook
      t.string :twitter
      t.string :instagram
      t.string :photo
      t.integer :ratings_count
      t.integer :ratings_sum

      t.timestamps
    end
    add_index :users, :registration_email, unique: true
  end
end
