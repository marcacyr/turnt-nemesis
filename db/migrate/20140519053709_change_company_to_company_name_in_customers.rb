class ChangeCompanyToCompanyNameInCustomers < ActiveRecord::Migration
  def self.up
    rename_column :customers, :company, :company_name
  end

  def self.down
    rename_column :customers, :company_name, :company
  end
end
