class RemoveEncryptPasswordFromUser < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :encrypted_password, :digest
  end
end
