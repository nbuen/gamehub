class Product < ApplicationRecord
	mount_uploader :image, ImageUploader
	has_many :cart_item
	has_many :product_categories
	has_many :categories, through: :product_categories

	accepts_nested_attributes_for :product_categories, allow_destroy: true

	def self.search(search)
		if search
			where(["name LIKE ?", "%#{search}%"])
		else
			all
		end
		
	end
end
