class ShoppingCart < ApplicationRecord
  has_many :cart_item
  before_save :set_subtotal

  def subtotal
  	cart_item.collect { |item| item.valid? ? (item.unit_price*item.quantity) : 0}.sum
  end

  private
  	def set_subtotal
  		self[:subtotal] = subtotal
  	end
end
