class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         #:recoverable,
         :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :admin
  # attr_accessible :title, :body

  has_many :customers

  def customer_creation_limit
    limit = 0
    CustomerCreationLog.all.each do |c|
      if c.created_at.to_date == Time.now.utc.to_date
        limit += 1
      end
    end
    limit
  end
end
