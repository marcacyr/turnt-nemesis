class Customer < ActiveRecord::Base
  attr_accessible :address, :city, :company, :email, :location, :phone, :primary_contact_person, :state, :zip

  belongs_to :user

  validates :user_id, presence: true
  validates :company, uniqueness: true

end
