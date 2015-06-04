class AddToItems < ActiveRecord::Migration
  def change
    add_column :items, :city, :string
    add_column :items, :state, :string
    add_column :items, :zip, :string
  end
end
