class AddTwitterToCustomers < ActiveRecord::Migration
  def self.up
    add_column :customers, :twitter_handle, :string
  end

  def self.down
    remove_column :customers, :twitter_handle
  end
end
