class AddFacebookToCustomers < ActiveRecord::Migration
  def self.up
    add_column :customers, :facebook, :string
  end

  def self.down
    remove_column :customers, :facebook
  end
end
