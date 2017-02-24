class OrdersController < ApplicationController

  def new
    @restaurant = Restaurant.find(params[:id])
    @order = Order.new
  end

  def create
    @restaurant = Restaurant.find(params[:id])
    @order = Order.create!(order_params)

    redirect_to "/order/#{@order.id}/join"
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

    redirect_to "/"
  end

  def edit
    @order = Order.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])
    @order.update(order_params)

    redirect_to "/order/#{@order.id}"
  end


  private
  def order_params
    params.require(:order).permit(:tip, :note, :restaurant_id)
  end
end
