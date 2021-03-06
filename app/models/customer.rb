class Customer < ActiveRecord::Base
  attr_accessible :address, :city, :company_name, :email,
  :phone, :primary_contact_person,
  :state, :zip, :visited, :company_name,
  :facebook, :twitter_handle, :gabstr_handle, :notes,
  :user_id, :unit, :signed_up

  belongs_to :user

  validates :user_id, presence: true
  validates :company_name, uniqueness: true

  after_create :customer_create_log

  def customer_create_log
    CustomerCreationLog.create!(user_id: self.user_id)
  end

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |customer|
        csv << customer.attributes.values_at(*column_names)
      end
    end
  end
end
