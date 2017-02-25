class ItemsController < ApplicationController

  def new
    @patron = Patron.find(params[:patron_id])
    @item = @patron.items.new
  end

  def create
    @patron = Patron.find(params[:patron_id])
    @item = @patron.items.create!(item_params)

    redirect_to patron_path(@patron)
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    @item.update(item_params)

    redirect_to patron_path(@item.patron)
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy

      redirect_to patron_path(@item.patron)

  end

  private
  def item_params
    params.require(:item).permit(:name, :price, :modifications, :modifications_price, :patron_id)
  end
end
