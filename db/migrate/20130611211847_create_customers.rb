class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :company
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :location
      t.string :primary_contact_person
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
