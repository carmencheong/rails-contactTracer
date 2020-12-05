class Migrationname < ActiveRecord::Migration[6.0]
#this migration is to edit the Visitors table
  def change
    remove_column :visitors, :time
	remove_column :visitors, :date
  end
end
