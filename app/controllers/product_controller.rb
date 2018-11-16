class ProductController < ApplicationController
  def index
  	@product_collection = Product.order(:name).page(params[:page]).per(6)
  	@item = current_order.cart_item.new
  end

  def show
  	@product = Product.find(params[:id])
  end
end
