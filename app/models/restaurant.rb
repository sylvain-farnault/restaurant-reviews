class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  # ActiveRecord create that for us
  # def reviews
  #   Review.where(restaurant_id: self.id)
  # end
end
