class Search < ApplicationRecord
	def search_products
		
		products = Product.all
		categories = Category.all

		categ_ar = categories.where(["name LIKE ?","%#{category}%"]) if category.present?
		categ_id = categ_ar.ids if category.present?
		categ = Category.find(categ_id[0]) if category.present?
		products = categ.products if category.present?

		products = products.where(["name LIKE ?","%#{keywords}%"]) if keywords.present?		
		products = products.where(["price >= ?", min_price]) if min_price.present?
		products = products.where(["price <= ?", max_price]) if max_price.present?

		return products
	end
end
