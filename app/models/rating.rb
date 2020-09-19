class Rating < ApplicationRecord
  belongs_to :product, class_name: "product", foreign_key: "product_id"
  belongs_to :user, class_name: "user", foreign_key: "user_id"
end
