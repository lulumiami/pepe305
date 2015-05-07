class Review < ActiveRecord::Base
  belongs_to :product
  # review.product
  belongs_to :user
  # review.user
end
