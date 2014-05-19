class AddGabstrHandleToCustomers < ActiveRecord::Migration
  def self.up
    add_column :customers, :gabstr_handle, :string
  end

  def self.down
    remove_column :customers, :gabstr_handle
  end
end
