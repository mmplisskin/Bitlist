class RemoveZip < ActiveRecord::Migration
  def change
    remove_column :items, :zip, :string
    add_column :items, :zipcode, :string
  end
end
