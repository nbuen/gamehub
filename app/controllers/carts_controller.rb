class CartsController < ApplicationController
	def show
		@cart_items = current_order.cart_item
	end
end
