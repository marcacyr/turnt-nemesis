class UnvisitedCustomersController < ApplicationController
  before_filter :authenticate_user!

  def index
    @unvisited_customers = Customer.where(visited: false)
  end
end