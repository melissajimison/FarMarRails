class VendorsController < ApplicationController

  def index
    @vendors = Vendor.all
  end

  def show
    @vendor = Vendor.where(id: params[:id]).first
    @products = Product.where(vendor_id: params[:id])
    @sales = Sale.where(vendor_id: params[:id])
  end

  def search
    @vendor = Vendor.where(id: params[:id]).first
    redirect_to @vendor
  end

  def new
    @vendor = Vendor.new
  end

  def create
    @vendor = Vendor.new(vendor_create_params)
    if @vendor.save
      redirect_to root_path
    else
      # @artist = Artist.select(:id, :name).order(:name)
      # render :index
    end
  end

  private

  def vendor_create_params
    params.require(:vendor).permit(:name, :employees, :market_id)
  end


end
