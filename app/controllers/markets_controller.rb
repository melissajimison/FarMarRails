class MarketsController < ApplicationController
  def index; end

  def new
    @market = Market.new
  end

  def create
    @market = Market.new(market_create_params)
    if @market.save
      redirect_to market_path(@market.id)
    else
      render :index
    end
  end

  def show

    begin
      if params[:q]
        @market = Market.find(params[:q])
      else
        @market = Market.find(params[:id])
      end

    rescue ActiveRecord::RecordNotFound
     flash[:error] = "That Market does not exist"
     redirect_to markets_path

     return
    end
  end

  def edit
    @market = Market.find(params[:id])
  end

  def update
    @market = Market.find(params[:id])
    @market = @market.update_attributes(market_update_params)
    redirect_to market_path

  end

  def destroy
    @market = Market.find(params[:id])
    @market.destroy
    redirect_to root_path
  end


  private

  def market_create_params
    params.require(:market).permit(:name, :address, :city, :county, :state, :zip)
  end

  def market_update_params
    params.require(:market).permit(:name, :address, :city, :county, :state, :zip)
  end

end
