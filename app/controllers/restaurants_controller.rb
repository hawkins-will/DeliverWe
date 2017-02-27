class RestaurantsController < ApplicationController

  def index
    @orders = Order.all
    @restaurants = Restaurant.all
  end
##########
  def show
    @restaurant = Restaurant.find(params[:id])
  end
##########
  def new
    @restaurant = Restaurant.new
  end
##########
  def create
    if restaurant_params[:name] == ""
      flash[:alert] = "You must enter a name for your restaurant!"
      redirect_to new_restaurant_path
      return
    end

    if restaurant_params[:menu_link] == ""
      flash[:alert] = "You must provide the URL for a menu!"
      redirect_to new_restaurant_path
      return
    end

    if restaurant_params[:tax] == ""
      flash[:alert] = "We need to know how much tax to charge!"
      redirect_to new_restaurant_path
      return
    end

    @restaurant = Restaurant.create(restaurant_params)

    if @restaurant.logo_url == ""
      @restaurant.logo_url = "https://s-media-cache-ak0.pinimg.com/564x/8b/22/f8/8b22f86ebe3169ec697933156a07eeb9.jpg"
    end

    if @restaurant.delivery_fee == nil
      @restaurant.delivery_fee = 0
      flash[:notice] = "The Delivery Fee or Minimum has been set to $0.00. Please make sure that's correct!"
    end

    if @restaurant.delivery_min == nil
      @restaurant.delivery_min = 0
      flash[:notice] = flash[:notice] + "The Delivery Minimum has been set to $0.00. Please make sure that's correct!"
    end

    @restaurant.save

    redirect_to root_path
  end
##########
  def edit
    @restaurant = Restaurant.find(params[:id])
  end
##########
  def update
    @restaurant = Restaurant.find(params[:id])
    @restaurant.update(restaurant_params)

    redirect_to restaurant_path(@restaurant)
  end
##########
  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy

    redirect_to root_path
  end


  private
  def restaurant_params
    params.require(:restaurant).permit(:name, :logo_url, :menu_link, :delivery_fee, :delivery_min, :tax)
  end

end
