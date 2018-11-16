class AddOnSaleToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :on_sale, :string
  end
end
