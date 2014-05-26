class CreateCustomerCreationLogs < ActiveRecord::Migration
  def change
    create_table :customer_creation_logs do |t|

      t.timestamps
    end
  end
end
