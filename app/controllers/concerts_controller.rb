class ConcertsController < ApplicationController

  def index
    @concerts = Concert.concerts_today
    @concerts_this_month = Concert.concerts_this_month
  end

  def show
    @concert = Concert.find params[:id]
    @comments = @concert.comments.all
    @comment = @concert.comments.new
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

  def price_lower
    @concerts = Concert.concerts_under params[:price].to_i
  end

  def popular_concerts
    @concerts = Concert.most_popular_concerts
  end

  private
  def concert_params
    params.require(:concert).permit(:band, :venue, :city, :date, :price, :description)
  end
end
