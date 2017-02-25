class PatronsController < ApplicationController

  def new
    @order = Order.find(params[:order_id])
    @patron = @order.patrons.new
  end

  def create
    @order = Order.find(params[:order_id])
    @patron = @order.patrons.create!(patron_params)

    redirect_to new_patron_item_path(@patron)
  end

  def show
    @patron = Patron.find(params[:id])
  end

  def edit
    @patron = Patron.find(params[:id])
  end

  def update
    @patron = Patron.find(params[:id])
    @patron.update(patron_params)

    redirect_to patron_path(@patron)
  end

  def cancel
    @patron = Patron.find(params[:id])
  end

  def destroy
    @patron = Patron.find(params[:id])
    @patron.destroy

    redirect_to root_path
  end

  private
  def patron_params
    params.require(:patron).permit(:name, :order_id)
  end
end
