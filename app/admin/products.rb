ActiveAdmin.register Product do
	permit_params :name, :description, :image, :price, :quantity
end