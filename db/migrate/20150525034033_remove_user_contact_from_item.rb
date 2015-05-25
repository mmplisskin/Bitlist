class RemoveUserContactFromItem < ActiveRecord::Migration
  def change
    remove_column :items, :user_contact, :integer
  end
end
