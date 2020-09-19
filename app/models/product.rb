class Product < ApplicationRecord
  has_many :ratings, dependent: :destroy
  belongs_to :category
end
