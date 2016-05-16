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
    @market = Market.find(params[:id])
    @vendors = @market.vendors
  end

  def search
    if Market.where(id: params[:id]) == []
      flash[:error] = "We are sorry, but we could not find the market with id #{params[:q]} in our database"
      redirect_to markets_path
    else
      @market = Market.find(params[:id])
      redirect_to @market
    end
  end

  def edit
    @market = Market.find(params[:id])
  end

  def update
    @market = Market.find(params[:id])
    @market = @market.update_attributes(market_create_params)
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

end
