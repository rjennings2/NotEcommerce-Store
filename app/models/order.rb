class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :product
  has_one :payment

  validates :order_date, :shipping_date, :status, presence: true
end
