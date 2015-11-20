class Concert < ActiveRecord::Base
  
  validates :band, :venue, :city, :date, :price, :description, presence: true

end
