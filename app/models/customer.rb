class Customer < ApplicationRecord
  has_many :orders
  has_many :reviews

  validates :first_name, :last_name, :email, :phone, :address, presence: true
  validates :email, uniqueness: true
end
