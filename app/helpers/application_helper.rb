module ApplicationHelper

	def current_order
		if !session[:shopping_cart_id].nil?
			ShoppingCart.find(session[:shopping_cart_id])
		else
			ShoppingCart.new
		end
	end
end
