class Review < ApplicationRecord
  belongs_to :product
validates :author, :presence => true
validates :author, length: { maximum: 50 }
validates :description, :presence => true
validates :description, length: { maximum: 250 }
validates :rating, :presence => true
end
