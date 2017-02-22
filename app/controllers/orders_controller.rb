class OrdersController < ApplicationController

  def new_order
    @restaurant = Restaurant.find(params[:id])
    @order = Order.new
  end

  def create_order
    @restaurant = Restaurant.find(params[:id])
    @order = Order.create!(order_params)

    redirect_to "/order/#{@order.id}/join"
  end

  def show_order
    @order = Order.find(params[:id])
  end

  private
  def order_params
    params.require(:order).permit(:total_price, :tip, :restaurant_id)
  end
end
