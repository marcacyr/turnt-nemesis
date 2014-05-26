class Customer < ActiveRecord::Base
  attr_accessible :address, :city, :company_name, :email,
  :location, :phone, :primary_contact_person,
  :state, :zip, :visited, :company_name,
  :facebook, :twitter_handle, :gabstr_handle, :notes

  belongs_to :user

  validates :user_id, presence: true
  validates :company_name, uniqueness: true

  after_save :check_if_visited
  after_create :customer_create_log

  def check_if_visited
    if !self.visited?
      if UnvisitedCustomer.where(customer_id: self.id).empty?
        UnvisitedCustomer.create!(customer_id: self.id)
      end
    elsif self.visited?
      if !UnvisitedCustomer.where(customer_id: self.id).empty?
        UnvisitedCustomer.all.each do |u|
          if u.customer_id == self.id
            u.destroy
          end
        end
      end
    end
  end

  def customer_create_log
    CustomerCreationLog.create!(user_id: self.user_id)
  end
end
