class PatronsController < ApplicationController

  def new
    @order = Order.find(params[:order_id])
    @patron = @order.patrons.new
  end

  def create
    @order = Order.find(params[:order_id])
    @patron = @order.patrons.new
    @patron.name = current_user.email
    @patron.user = current_user
    @patron.save

    redirect_to order_path(@order)
  end

  def show
    @patron = Patron.find(params[:id])
  end

  def edit
    @patron = Patron.find(params[:id])
    unless @patron.user == current_user || @patron.order.patrons.first.user == current_user
      flash[:alert] = "You're not authorized to Edit other peoples' orders"
      redirect_to patron_path(@patron)
    end
  end

  def update
    @patron = Patron.find(params[:id])

    if patron_params[:name] == ""
      flash[:alert] = "Name has not been changed because the field was left blank. "
      redirect_to edit_patron_path(@patron)
      return
    end

    @patron.update(patron_params)

    redirect_to patron_path(@patron)
  end

  def cancel
    @patron = Patron.find(params[:id])
    unless @patron.user == current_user || @patron.order.patrons.first.user == current_user
      flash[:alert] = "You're not authorized to Cancel other peoples' orders"
      redirect_to patron_path(@patron)
    end
  end

  def destroy
    @patron = Patron.find(params[:id])
    if @patron.user == current_user || @patron.order.patrons.first.user == current_user
      @patron.destroy
      redirect_to root_path
    else
      flash[:alert] = "You're not authorized to Cancel other peoples' orders"
      redirect_to patron_path(@patron)
    end
  end

  private
  def patron_params
    params.require(:patron).permit(:name, :order_id)
  end
end
