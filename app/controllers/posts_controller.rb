class PostsController < ApplicationController

  def new
    @order = Order.find(params[:order_id])
    @post = @order.posts.new
  end
##########
  def create

  end
##########
  def delete

  end

end
