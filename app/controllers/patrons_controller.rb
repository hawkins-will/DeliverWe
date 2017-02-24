class PatronsController < ApplicationController

  def new
    @order = Order.find(params[:id])
    @patron = Patron.new
  end

  def create
    @order = Order.find(params[:id])
    @patron = Patron.create!(patron_params)

    redirect_to "/patrons/#{@patron.id}/add"
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

    redirect_to "/patrons/#{@patron.id}"
  end

  def cancel
    @patron = Patron.find(params[:id])
  end

  def destroy
    @patron = Patron.find(params[:id])
    @patron.destroy

    redirect_to "/"
  end

  private
  def patron_params
    params.require(:patron).permit(:name, :order_id)
  end
end
