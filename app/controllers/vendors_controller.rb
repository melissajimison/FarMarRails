class VendorsController < ApplicationController

  def index
    @vendors = Vendor.all
  end

  def show

  end

  def search
    @vendor = Vendor.where(id: params[:id]).first
    redirect_to @vendor 
  end
end
