class Product < ApplicationRecord
  has_many :reviews
  belongs_to :user
  has_attached_file :image
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  validates :name, :presence => true
  validates :description, :presence => true
  validates :cost, :presence => true
end
