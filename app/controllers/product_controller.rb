class ProductController < ApplicationController
  def index
  	@product_collection = Product.order(:name).page(params[:page]).per(6).search(params[:search])
  	@item = current_order.cart_item.new
  end

  def show
  	@product = Product.find(params[:id])
  	@item = current_order.cart_item.new
  end
end
