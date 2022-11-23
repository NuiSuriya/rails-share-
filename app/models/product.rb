class Product < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :name, :category, :description, :price, presence: true
end
