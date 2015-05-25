class RemovePriceDecimelFromItem < ActiveRecord::Migration
  def change
    remove_column :items, :price_decimal, :integer
  end
end
