class Product < ApplicationRecord
   has_many :order_items
   has_many :reviews
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "apricots.jpg"
  validates_attachment_content_type :image, content_type:/\Aimage\/.*\Z/
  validates :name, :presence => true
  validates :description, :presence => true
  validates :cost, :presence => true

end
