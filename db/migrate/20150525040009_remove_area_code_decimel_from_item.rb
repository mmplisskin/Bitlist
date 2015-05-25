class RemoveAreaCodeDecimelFromItem < ActiveRecord::Migration
  def change
    remove_column :items, :area_code, :integer
  end
end
