class AddEncryptPasswordToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :encrypted_password, :digest
  end
end
