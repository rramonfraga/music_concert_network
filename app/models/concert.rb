class Concert < ActiveRecord::Base
  
  validates :band, :venue, :city, :date, :price, :description, presence: true


  def self.concerts_today
    date = Date.current
    where(date: date.beginning_of_day..date.end_of_day)
  end

  def self.concerts_this_month
    date = Date.current + 1.day
    where(date: date.beginning_of_day..date.end_of_month)
  end

end

