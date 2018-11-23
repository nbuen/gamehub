class Search < ApplicationRecord
	def search_products
		
		products = Product.all
		categories = Category.all

		categ_ar = categories.where(["name LIKE ?","%#{category}%"]).pluck(:id) if category.present?
		category = Category.find(categ_ar[0]) if category.present?

		products = products.where(["name LIKE ?","%#{keywords}%"]) if keywords.present?
		products = category.products if category.present?
		products = products.where(["price >= ?", min_price]) if min_price.present?
		products = products.where(["price <= ?", max_price]) if max_price.present?

		return products
	end
end
