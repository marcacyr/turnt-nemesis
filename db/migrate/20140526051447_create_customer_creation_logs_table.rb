class CreateCustomerCreationLogsTable < ActiveRecord::Migration
  def change
    create_table :customer_creation_logs do |t|
      t.integer :user_id

      t.timestamps
    end
  end
end
