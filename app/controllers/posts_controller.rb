class PostsController < ApplicationController

  def new
    @order = Order.find(params[:order_id])
    @post = @order.posts.new
  end
##########
  def create
    @order = Order.find(params[:order_id])
    if post_params[:content] == ""
      flash[:alert] = "You cannot make a post with no content."
      redirect_to new_order_posts_path(@order)
      return
    end
    @post = @order.posts.create(post_params.merge(user: current_user))

    redirect_to order_path(@order)
  end
##########
  def edit
    @post = Post.find(params[:id])
    unless @post.user == current_user || @post.order.patrons.first.user || current_user
      flash[:alert] = "You're not authorized to Edit other peoples' posts"
      redirect_to order_path(@post.order)
    end
  end
##########
  def update
    @post = Post.find(params[:id])

    if post_params[:content] == ""
      flash[:alert] = "You cannot make a post with no content."
      redirect_to edit_post_path(@post)
      return
    end

    @post.update(post_params)

    redirect_to order_path(@post.order)
  end
##########
  def delete

  end

  private
  def post_params
    params.require(:post).permit(:content)
  end
end
