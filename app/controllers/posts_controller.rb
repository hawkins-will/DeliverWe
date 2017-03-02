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
    @post = @order.posts.new(post_params)
    @post.author = current_user.email
    @post.user = current_user
    @post.save



    redirect_to order_path(@order)
  end
##########
  def edit
    @post = Post.find(params[:id])
    unless @post.user == current_user || @post.order.patrons.first.user == current_user || current_user.email == "admin@deliverwe.com"
      flash[:alert] = "You are not authorized to Edit other peoples' posts"
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
  def destroy
    @post = Post.find(params[:id])
    if @post.user == current_user || @post.order.patrons.first.user == current_user || current_user.email == "admin@deliverwe.com"
      @post.destroy
      redirect_to order_path(@post.order)
    else
      flash[:alert] = "You are not authorized to Delete other peoples' posts"
      redirect_to order_path(@post.order)
    end
  end


  private
  def post_params
    params.require(:post).permit(:content)
  end
end
