class MarketsController < ApplicationController
  def index
    @markets = Market.all
  end

  def show
    @market = Market.find(params[:id])
    @vendors = Vendor.where(market_id: @market.id)
  end

  #This is Melissa's comment
end
