class ConcertsController < ApplicationController

  def index
    @concerts_today = Concert.concerts_today
    @concerts_this_month = Concert.concerts_this_month
  end

  def show
    @concert = Concert.find params[:id]
  end

  def new
    @concert = Concert.new
  end

  def create
    @concert = Concert.new concert_params
    if @concert.save
      redirect_to action: 'index', controller: 'concerts'
    else
      render 'new'
    end
  end

  private
  def concert_params
    params.require(:concert).permit(:band, :venue, :city, :date, :price, :description)
  end
end
