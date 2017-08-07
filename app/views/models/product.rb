class Product < ApplicationRecord
  has_many :reviews
  has_many :order_items
  
  has_attached_file :image,:default_url => "/assets/apricots.jpg"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  validates :name, :presence => true
  validates :description, :presence => true
  validates :cost, :presence => true
end
