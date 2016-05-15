class SalesController < ApplicationController
  def new
    @sale = Sale.new
    @vendor = Vendor.find(params[:vendor_id])
  end

  def create
    @sale = Sale.new(sale_create_params[:sale])
    if @sale.save
      redirect_to vendor_path(@sale.vendor_id)
    else
    render :new
    end
  end


  private
  #tells us what parameters we want to use when we create an album
  def sale_create_params
    params.permit(sale: [:amount, :vendor_id, :market_id, :purchase_time, :product_id])
  end

  # def product_update_params
  #   params.permit(product: [:name])
  # end
end
