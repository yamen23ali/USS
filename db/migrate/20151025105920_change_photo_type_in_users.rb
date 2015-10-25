class ChangePhotoTypeInUsers < ActiveRecord::Migration
  
  include Paperclip::Schema
  
  def up
    add_attachment :users, :photo
  end

  def down
    remove_attachment :users, :photo
  end

end
