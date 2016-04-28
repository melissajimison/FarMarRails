class ProductsController < ApplicationController


  def new 
    @product = Product.new
  end

  def create
    @product = Product.new(product_create_params[:product])
    if @product.save
      redirect_to vendor_path(@product.vendor_id)
    else
    render :new
    end
  end

  def update
    product = Product.find(params[:id])
    # task = Task.find(params[:id])
    product.update_attributes(product_update_params[:product])
    redirect_to vendor_path(product.vendor_id)
  end

  def delete
    redirect_to @product
  end

  def destroy
    @product = Product.where(id: params[:product_id])
    @product.destroy_all
    redirect_to vendor_path
  end

  def edit
    @product = Product.find(params[:product_id])
  end

  def search
    @product = Product.where(id: params[:id]).first
    redirect_to @product
  end

  def show
    @product = Product.where(id: params[:product_id])
  end

  private
  #tells us what parameters we want to use when we create an album
  def product_create_params
    params.permit(product: [:name, :vendor_id])
  end

  def product_update_params
    params.permit(product: [:name])
  end
end
