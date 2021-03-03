class Review < ApplicationRecord
  belongs_to :restaurant

  # ActiveRecord create that for us
  # def restaurant
  #   Restaurant.find(self.restaurant_id)
  # end

  validates :content, presence: true
end
