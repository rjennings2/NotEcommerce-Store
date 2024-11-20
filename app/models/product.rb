class Product < ApplicationRecord
  belongs_to :category
  has_many :reviews
  has_many :orders

  validates :product_name, :price, :size, :colour, presence: true
  validates :price, numericality: { greater_than: 0 }
end
