class AddVisitedToCustomers < ActiveRecord::Migration
  def self.up
    add_column :customers, :visited, :boolean, :default => false
  end

  def self.down
    remove_column :customers, :visited
  end
end
