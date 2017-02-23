class ItemsController < ApplicationController

  def new_item
    @patron = Patron.find(params[:id])
    @item = Item.new
  end

  def create_item
    @patron = Patron.find(params[:id])
    @item = Item.create!(item_params)

    redirect_to "/patrons/#{@patron.id}"
  end

  def edit_item
    @item = Item.find(params[:id])
  end

  def update_item
    @item = Item.find(params[:id])
    @item.update(item_params)

    redirect_to "/patrons/#{@item.patron.id}"
  end

  def destroy_item
    @item = Item.find(params[:id])
    @item.destroy

      redirect_to "/patrons/#{@item.patron.id}"

  end

  private
  def item_params
    params.require(:item).permit(:name, :price, :modifications, :modifications_price, :patron_id)
  end
end
