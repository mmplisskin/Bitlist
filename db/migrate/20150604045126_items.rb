class Items < ActiveRecord::Migration
  def change
    remove_column :items, :location, :string
  end
end
