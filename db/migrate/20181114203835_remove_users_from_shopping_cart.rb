class RemoveUsersFromShoppingCart < ActiveRecord::Migration[5.2]
  def change
    remove_reference :shopping_carts, :user, foreign_key: true
  end
end
