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
      redirect_to vendor_path(@vendor.id)
    else
      # @artist = Artist.select(:id, :name).order(:name)
      # render :index
    end
  end

  def searchasmark
    @vendor = Vendor.find(params[:q])
  end

  def edit
    @vendor = Vendor.find(params[:id])
  end

  def update
    @vendor = Vendor.find(params[:id])
    @vendor.update_attributes(vendor_update_params)
    redirect_to vendor_path
  end

  def destroy
    @vendor = Vendor.find(params[:id])
    @vendor.destroy
    redirect_to market_path(@vendor)
  end

  private

  def vendor_create_params
    params.require(:vendor).permit(:name, :employees, :market_id)
  end

  def vendor_update_params
    params.require(:vendor).permit(:name, :employees, :market_id)
  end


end
