class ChangeNotesColumnInCustomers < ActiveRecord::Migration
  def self.up
    change_column :customers, :notes, :text
  end

  def self.down
    change_column :customers, :notes, :string
  end
end
