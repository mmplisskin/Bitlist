class RemoveCategorySetFromItem < ActiveRecord::Migration
  def change
    remove_column :items, :category_set, :string
  end
end
