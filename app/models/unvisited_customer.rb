class UnvisitedCustomer < ActiveRecord::Base
  attr_accessible :customer_id

  belongs_to :customer
end
