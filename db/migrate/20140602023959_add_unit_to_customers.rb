class AddUnitToCustomers < ActiveRecord::Migration
  def self.up
    add_column :customers, :unit, :string
  end

  def self.down
    remove_column :customers, :unit
  end
end
