class Comment < ActiveRecord::Base
  belongs_to :concert, counter_cache: true

  validates :description, :user, presence: true
end
