class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.integer :price
      t.decimal :price_decimal
      t.string :description
      t.string :category_set
      t.string :phone_number
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
