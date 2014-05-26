class DropUnvisitedCustomersTable < ActiveRecord::Migration
  def self.up
    drop_table :unvisited_customers
  end

  def self.down
    create_table :unvisited_customers
  end
end
