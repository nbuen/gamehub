class ShoppingCart < ApplicationRecord
  belongs_to :user
  before_save :set_subtotal

  has_many :cart_item

  def subtotal
  	cart_item.collect { |item| cart_item.valid? (cart_item.unit_price*cart_item.quantity) : 0}.sum
  end

  private
  	def set_subtotal
  		self{:subtotal} = subtotal
  	end
end
