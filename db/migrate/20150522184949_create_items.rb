class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :location
      t.integer :price
      t.decimal :price_decimal
      t.string :description
      t.string :category
      t.string :category_set
      t.integer :area_code
      t.integer :phone_number
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
