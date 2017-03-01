class OrdersController < ApplicationController

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @order = @restaurant.orders.new
  end
##########
  def create
    @restaurant = Restaurant.find(params[:restaurant_id])

    unless order_params[:time].to_time
      flash[:alert] = "Please enter a valid time."
      redirect_to new_restaurant_order_path(@restaurant)
      return
    end

    @order = @restaurant.orders.create(order_params)
    @patron = @order.patrons.new
    @patron.name = current_user.email
    @patron.user = current_user
    @patron.save

    redirect_to new_patron_item_path(@patron)
  end
##########
  def show
    @order = Order.find(params[:id])
    @post = @order.posts.new
  end
##########
  def cancel
    @order = Order.find(params[:id])
    unless @order.patrons.first.user == current_user
      flash[:alert] = "You're not authorized to Cancel this order"
      redirect_to order_path(@order)
    end
  end
##########
  def destroy
    @order = Order.find(params[:id])
    if @order.patrons.first.user == current_user
      @order.destroy
      redirect_to root_path
    else
      flash[:alert] = "You're not authorized to Cancel this order"
      redirect_to order_path(@order)
    end
  end
##########
  def edit
    @order = Order.find(params[:id])
    unless @order.patrons.first.user == current_user
      flash[:alert] = "You're not authorized to Edit this order"
      redirect_to order_path(@order)
    end
  end
##########
  def update
    @order = Order.find(params[:id])

    if order_params[:time] == ""
      @time = @order.time
      flash[:alert] = "The Expected Order Time has not been changed because the field was left blank. "
    end

    @order.update(order_params)

    if @time
      @order.time = @time
    end

    @order.save

    redirect_to order_path(@order)
  end


  private
  def order_params
    params.require(:order).permit(:tip, :time, :restaurant_id)
  end
end
