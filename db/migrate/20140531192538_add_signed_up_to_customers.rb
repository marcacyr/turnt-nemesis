class AddSignedUpToCustomers < ActiveRecord::Migration
  def self.up
    add_column :customers, :signed_up, :boolean
  end

  def self.down
    remove_column :customers, :signed_up
  end
end
