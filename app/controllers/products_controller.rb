class ProductsController < ApplicationController
  def show

  end

  def update
  end

  def delete
    redirect_to @product
  end

  def edit
  end

  def search
    @product = Product.where(id: params[:id]).first
    redirect_to @product
  end
end
