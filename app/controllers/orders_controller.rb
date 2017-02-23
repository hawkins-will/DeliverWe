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

  def cancel_order
    @order = Order.find(params[:id])
  end

  def destroy_order
    @order = Order.find(params[:id])
    @order.destroy

    redirect_to "/"
  end

  def edit_order
    @order = Order.find(params[:id])
  end

  def update_order
    @order = Order.find(params[:id])
    @order.update(order_params)

    redirect_to "/order/#{@order.id}"
  end


  private
  def order_params
    params.require(:order).permit(:tip, :note, :restaurant_id)
  end
end
