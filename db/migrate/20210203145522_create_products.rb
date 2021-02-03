class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :title, null: false
      t.text :description
      #Specifies how wide a range for price
      t.decimal :price, null: false, precision: 15, scale: 2 
      t.string :image_url

      t.timestamps
    end
  end
end
