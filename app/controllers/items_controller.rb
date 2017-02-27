class ItemsController < ApplicationController

  def new
    @patron = Patron.find(params[:patron_id])
    unless @patron.user == current_user || @patron.order.patrons.first == current_user
      flash[:alert] = "You're not authorized to Add Items to other peoples' orders"
      redirect_to patron_path(@patron)
    end

    @item = @patron.items.new
  end

  def create
    @patron = Patron.find(params[:patron_id])
    @item = @patron.items.create!(item_params)

    redirect_to patron_path(@patron)
  end

  def edit
    @item = Item.find(params[:id])
    unless @item.patron.user == current_user || @item.patron.order.patrons.first == current_user
      flash[:alert] = "You're not authorized to Edit other peoples' orders"
      redirect_to patron_path(@item.patron)
    end
  end

  def update
    @item = Item.find(params[:id])
    @item.update(item_params)

    redirect_to patron_path(@item.patron)
  end

  def destroy
    @item = Item.find(params[:id])
    unless @item.patron.user == current_user || @item.patron.order.patrons.first == current_user
      @item.destroy
      redirect_to patron_path(@item.patron)
    else
      flash[:alert] = "You're not authorized to Edit other peoples' orders"
      redirect_to patron_path(@item.patron)
    end
  end

  private
  def item_params
    params.require(:item).permit(:name, :price, :modifications, :modifications_price, :patron_id)
  end
end
