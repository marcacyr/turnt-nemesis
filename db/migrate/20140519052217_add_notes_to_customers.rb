class AddNotesToCustomers < ActiveRecord::Migration
  def self.up
    add_column :customers, :notes, :string
  end

  def self.down
    remove_column :customers, :notes
  end
end
