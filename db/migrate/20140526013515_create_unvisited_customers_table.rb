class CreateUnvisitedCustomersTable < ActiveRecord::Migration
  def change
    create_table :unvisited_customers do |t|
      t.integer :customer_id

      t.timestamps
    end
  end
end
