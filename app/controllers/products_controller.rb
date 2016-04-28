class ProductsController < ApplicationController
  def show
    @product = Product.where(id: params[:product_id])
  end

  def update
    # task = Task.find(params[:id])
    # task.update_attributes(task_update_params[:task])
    # redirect_to root_path
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
end
