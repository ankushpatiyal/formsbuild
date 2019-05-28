class CustomersController < ApplicationController
  def index
  end

  def new
    @customer = Customer.new
  end

  def create
    debugger
    @customer = Customer.new(customer_params)
    if @customer.valid?
      debugger
      @customer.save
      redirect_to customers_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end


  private
  def customer_params
    params.require(:customer).permit(:first_name, :last_name, :gender, :enable, contact_attributes: [:email])
  end
end
