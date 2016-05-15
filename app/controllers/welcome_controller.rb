class WelcomeController < ApplicationController
  def index
    @markets = Market.all
  end

  def show
    @market = Market.find(params[:id])
    @vendors = @market.vendors
  end

end
