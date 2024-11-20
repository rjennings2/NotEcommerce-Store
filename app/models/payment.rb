class Payment < ApplicationRecord
  belongs_to :order

  validates :payment_date, :amount, :payment_method, presence: true
  validates :amount, numericality: { greater_than_or_equal_to: 0 }
end
