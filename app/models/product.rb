class Product < ApplicationRecord
  has_many :ratings, dependent: :destroy
  belongs_to :category
  has_many_attached :photos
  
  validates :admin_rating, numericality: {less_than_or_equal_to: 5}
end
