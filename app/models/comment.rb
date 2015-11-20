class Comment < ActiveRecord::Base
  belongs_to :concert

  validates :description, :user, presence: true
end
