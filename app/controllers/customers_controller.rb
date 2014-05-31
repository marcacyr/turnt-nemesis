class CustomersController < ApplicationController
  before_filter :authenticate_user!

  def index
    @customers = Customer.where(user_id: current_user.id)
    @customer = current_user.customers.new

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @customers }
    end
  end

  def all_customers
    @customers = Customer.all
  end

  def show
    @customer = Customer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @customer }
    end
  end

  def new
    @customer = current_user.customers.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @customer }
    end
  end

  def edit
    if current_user.admin?
      @customer = Customer.find(params[:id])
    else
      @customer = current_user.customers.find(params[:id])
    end
  end

  def create
    @customer = current_user.customers.new(params[:customer])

    respond_to do |format|
      if @customer.save
        format.html { redirect_to @customer, notice: 'Customer was successfully created.' }
      else
        format.html { render action: "new" }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @customer = current_user.customers.find(params[:id])

    respond_to do |format|
      if @customer.update_attributes(params[:customer])
        format.html { redirect_to @customer, notice: 'Customer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    if current_user.admin?
      @customer = current_user.customers.find(params[:id])
      @customer.destroy

      respond_to do |format|
        format.html { redirect_to all_customers_path }
        format.json { head :no_content }
      end
    end
  end
end
