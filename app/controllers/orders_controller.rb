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
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy

    redirect_to root_path
  end

  def edit
    @order = Order.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])
    @order.update(order_params)

    redirect_to order_path(@order)
  end


  private
  def order_params
    params.require(:order).permit(:tip, :note, :restaurant_id)
  end
end
