class MarketsController < ApplicationController
  def index

  end

  def new_market
    @market = Market.new
  end

  def create_market
    @market = Market.new(market_create_params)
    if @market.save
      redirect_to application_path(@market.id)
    else
      # @artist = Artist.select(:id, :name).order(:name)
      # render :index
    end
  end

  def  search_market
    @markets = Market.find(params[:q])
  end

  def edit_market
    @market = Market.find(params[:q])
  end

  def update_market
    @market = Market.find(params[:id])
    @market.update(markets_create_params)
    redirect_to root_path
  end

  private

  def market_create_params
    params.require(:market).permit(:name, :city, :county, :state, :zip)
  end

  def vendor_create_params
    params.require(:vendor).permit(:name, :employees, :market_id)
  end
end
