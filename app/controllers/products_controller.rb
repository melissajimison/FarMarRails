class ProductsController < ApplicationController
  def show

  end

  def update
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
  end

  def search
    @product = Product.where(id: params[:id]).first
    redirect_to @product
  end
end
