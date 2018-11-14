class Product < ApplicationRecord
	mount_uploader :image, ImageUploader
	has_many :cart_item

	validates :name, :description, :image, :price, :quantity, presence: true
end
