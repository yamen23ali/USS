class RenameStatusesType < ActiveRecord::Migration
  def change
  	def self.up
  		rename_column :statuses, :type, :status_type
  	end

  	def self.down
  	# rename back if you need or do something else or do nothing
    end
  end
end
