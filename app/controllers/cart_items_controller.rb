class CartItemsController < ApplicationController
	def create
		@shopping_cart = current_order
		@cart_item = @shopping_cart.cart_item.new(cart_item_params)
		@shopping_cart.save
		session[:shopping_cart_id] = @shopping_cart.id
	end

	def update
		@shopping_cart = current_order
		@cart_item = @shopping_cart.cart_item.find(params[:id])
		@cart_item.update_attributes(cart_item_params)
		@cart_items = @shopping_cart.cart_item
	end

	def destroy
		@shopping_cart = current_order
		@cart_item = @shopping_cart.cart_item.find(params[:id])
		@cart_item.destroy
		@cart_items = @shopping_cart.cart_item
	end

	private
		def cart_item_params
			params.require(:cart_item).permit(:product_id, :quantity)
		end
end
