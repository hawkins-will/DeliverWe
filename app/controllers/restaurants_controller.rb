class RestaurantsController < ApplicationController

  def index
    @orders = Order.all
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end


  private
  def restaurant_params
    params.require(:restaurant).permit(:name, :logo_url, :menu_link, :delivery_fee, :delivery_min)
  end

end
