class RemovePasswordsToUser < ActiveRecord::Migration[5.2]
  def change
  	remove_column :users, :encrypted_password, :string
  	remove_column :users, :password, :digest
  end
end
