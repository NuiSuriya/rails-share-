class Product < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo
  validates :name, :category, :description, :price, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_name_and_category,
                  against: [:name, :category],
                  using: {
                    tsearch: { prefix: true }
                  }
end
