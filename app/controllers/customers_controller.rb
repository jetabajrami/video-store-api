class CustomersController < ApplicationController
  def index
    customers = Customer.all.order(:name)
  
    # render json: { ready_for_lunch: "yessss" }, status: :ok
    render json: customers.as_json(only: [:id, :name, :register_at, :address, :city, :state, :postal_code, :phone, :videos_checked_out_count]), 
    status: :ok
  end
end


