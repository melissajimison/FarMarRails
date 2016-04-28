class VendorsController < ApplicationController

  def index
    @vendors = Vendor.all
  end

  def show
    @vendor = Vendor.where(id: params[:id]).first
    @products = Product.where(vendor_id: params[:id])
  end

  def search
    @vendor = Vendor.where(id: params[:id]).first
    redirect_to @vendor 
  end
end
