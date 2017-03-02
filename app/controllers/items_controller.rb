class ItemsController < ApplicationController

  def new
    @patron = Patron.find(params[:patron_id])
    unless @patron.user == current_user || @patron.order.patrons.first.user == current_user
      flash[:alert] = "You're not authorized to Add Items to other peoples' orders"
      redirect_to order_path(@patron.order)
    end

    @item = @patron.items.new
  end
##########
  def create
    @patron = Patron.find(params[:patron_id])

    if item_params[:name] == ""
      flash[:alert] = "Please enter a Name for the item you'd like to order. "
      redirect_to new_patron_item_path(@patron)
      return
    end

    if item_params[:price] == ""
      flash[:alert] = "Please enter the Price of the item you'd like to order. "
      redirect_to new_patron_item_path(@patron)
      return
    end

    @item = @patron.items.create!(item_params)

    redirect_to order_path(@patron.order)
  end
##########
  def edit
    @item = Item.find(params[:id])
    unless @item.patron.user == current_user || @item.patron.order.patrons.first.user == current_user
      flash[:alert] = "You're not authorized to Edit other peoples' orders"
      redirect_to order_path(@item.patron.order)
    end
  end
##########
  def update
    @item = Item.find(params[:id])

    if item_params[:name] == ""
      @name = @item.name
      flash[:alert] = "Name was not updated because the field was left blank. "
    end

    if item_params[:price] == ""
      @price = @item.price
      if flash[:alert]
        flash[:alert] = flash[:alert] + "Price was not updated because the field was left blank."
      else
        flash[:alert] = "Price was not updated because the field was left blank."
      end
    end

    @item.update(item_params)

    if @name
      @time.name = @name
    end
    if @price
      @item.name = @price
    end

    redirect_to order_path(@item.patron.order)
  end
##########
  def destroy
    @item = Item.find(params[:id])
    unless @item.patron.user == current_user || @item.patron.order.patrons.first.user == current_user
      @item.destroy
      redirect_to order_path(@item.patron.order)
    else
      flash[:alert] = "You're not authorized to Edit other peoples' orders"
      redirect_to order_path(@item.patron.order)
    end
  end


  private
  def item_params
    params.require(:item).permit(:name, :price, :modifications, :modifications_price, :patron_id)
  end
end
