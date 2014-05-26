class UnvisitedCustomersController < ApplicationController
  before_filter :authenticate_user!

  def index
    @unvisited_customers = Customer.where(visited: false)
  end

  def edit
    @claim_customer = Customer.find(params[:id])
  end
end