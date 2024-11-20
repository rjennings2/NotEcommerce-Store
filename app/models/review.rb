class Review < ApplicationRecord
  belongs_to :product
  belongs_to :customer

  validates :rating, presence: true, inclusion: { in: 1..5 }
  validates :comment, length: { maximum: 500 }
end
