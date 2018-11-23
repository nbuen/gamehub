class SearchesController < ApplicationController
	def new
		@search = Search.new
		@categories = Category.all.pluck(:name)

		
	end

	def create
		@search = Search.create(search_params)
		redirect_to @search
	end

	def show
		@search = Search.find(params[:id])
		@item = current_order.cart_item.new
	end

	private

	def search_params
		params.require(:search).permit(:keywords, :category, :min_price, :max_price)
	end
end
