class RemovePriceFromItems < ActiveRecord::Migration
  def change
    remove_column :items, :price, :integer
    remove_column :items, :location, :string
  end
end
