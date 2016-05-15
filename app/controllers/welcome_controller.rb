class WelcomeController < ApplicationController
  def index
    @markets = Market.all
  end

  def show
    @market = Market.find(params[:id])
    @vendors = Vendor.where(market_id: @market.id)
  end

  protect_from_forgery with: :exception
end
