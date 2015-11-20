class Concert < ActiveRecord::Base
  has_many :comments
  
  validates :band, :venue, :city, :date, :price, :description, presence: true


  def self.concerts_today
    date = Date.current
    where(date: date.beginning_of_day..date.end_of_day)
  end

  def self.concerts_this_month
    date = Date.tomorrow
    where(date: date.beginning_of_day..date.end_of_month)
  end

  def self.concerts_under price=0
    where(price: 0..price)
  end

  def self.most_popular_concerts
    where('date > ?', Date.tomorrow).order('comments_count DESC').limit(10)
  end

end

