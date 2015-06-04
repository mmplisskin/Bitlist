class Item < ActiveRecord::Base
  belongs_to :categories
  belongs_to :user

#   def self.search(params)
#
#
#     item = Item.where(category_id: params[:category].to_i)
#     item = items.where"name like ? or description like ?", "%#{params[:search]}", "%#{params[:search]}" if "%#{params[:search]}".present?
#     item
#   end
# end

geocoded_by :full_address
after_validation :geocode

def full_address
  [city, state, zipcode].join(', ')
end


def self.search(params)
  items = Item.where("name like? or description like?", params[:search],params[:search]) if params[:search].present?
  items = items.near(params[:location], 20) if params[:location].present?
  items

end


require "rubygems"
require "json"
require "net/http"




end
