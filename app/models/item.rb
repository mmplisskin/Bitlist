class Item < ActiveRecord::Base
  belongs_to :categories
  belongs_to :user



geocoded_by :full_address
after_validation :geocode

def full_address
  [city, state, zipcode].join(', ')
end


def self.search(params)

  items = Item.where("name ILIKE ? OR description ILIKE ?", params[:search], params[:search]) if params[:search].present?
  items = items.near(params[:location], 20) if params[:location].present?
  items

end


require "rubygems"
require "json"
require "net/http"




end
