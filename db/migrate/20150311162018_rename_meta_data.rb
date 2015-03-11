class RenameMetaData < ActiveRecord::Migration
  
  def change
  	rename_table :meta_data , :descriptors
  end
end
