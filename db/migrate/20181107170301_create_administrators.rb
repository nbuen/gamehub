class CreateAdministrators < ActiveRecord::Migration[5.2]
  def change
    create_table :administrators do |t|
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end