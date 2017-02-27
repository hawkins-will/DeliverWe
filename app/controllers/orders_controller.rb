class OrdersController < ApplicationController

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @order = @restaurant.orders.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @order = @restaurant.orders.create(order_params)

    redirect_to new_order_patron_path(@order)
  end

  def show
    @order = Order.find(params[:id])
  end

  def cancel
    @order = Order.find(params[:id])
    unless @order.patrons.first.user == current_user
      flash[:alert] = "You're not authorized to Cancel this order"
      redirect_to order_path(@order)
    end
  end

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

  def edit
    @order = Order.find(params[:id])
    unless @order.patrons.first.user == current_user
      flash[:alert] = "You're not authorized to Edit this order"
      redirect_to order_path(@order)
    end
  end

  def update
    @order = Order.find(params[:id])
    @order.update(order_params)

    redirect_to order_path(@order)
  end


  private
  def order_params
    params.require(:order).permit(:tip, :note, :time, :restaurant_id)
  end
end
