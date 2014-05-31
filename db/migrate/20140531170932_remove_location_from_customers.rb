class RemoveLocationFromCustomers < ActiveRecord::Migration
  def self.up
    remove_column :customers, :location
  end

  def self.down
    add_column :customers, :location
  end
end
