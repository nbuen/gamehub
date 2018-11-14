class AddSubtotalAndTaxAndShippingToShoppingCart < ActiveRecord::Migration[5.2]
  def change
    add_column :shopping_carts, :subtotal, :decimal
    add_column :shopping_carts, :tax, :decimal
    add_column :shopping_carts, :shipping, :decimal
  end
end
