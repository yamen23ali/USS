class RemoveRegistrationEmailFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :registration_email, :string
  end
end
