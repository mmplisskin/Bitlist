class AddPriceToItems < ActiveRecord::Migration
  def change
    add_column :items, :price, :decimal
    remove_column :items, :user_id, :integer
    t.references :user

  end
end
