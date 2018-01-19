class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :isbn
      t.string :large_image
      t.string :small_image

      t.timestamps
    end
  end
end
