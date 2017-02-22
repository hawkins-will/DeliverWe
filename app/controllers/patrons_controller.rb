class PatronsController < ApplicationController

  def new_patron
    @order = Order.find(params[:id])
    @patron = Patron.new
  end

  def create_patron
    @order = Order.find(params[:id])
    @patron = Patron.create!(patron_params)

    redirect_to "/patrons/#{@patron.id}/add"
  end

  def show_patron
    @patron = Patron.find(params[:id])
  end

  private
  def patron_params
    params.require(:patron).permit(:name, :order_id)
  end
end
