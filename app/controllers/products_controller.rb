class ProductsController < ApplicationController
  def show
    @product = Product.where(id: params[:product_id])
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

  private
  #tells us what parameters we want to use when we create an album
  # def task_create_params
  #   params.permit(task: [:name, :description, :person_id])
  # end

  def product_update_params
    params.permit(product: [:name])
  end
end
