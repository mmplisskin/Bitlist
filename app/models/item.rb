class Item < ActiveRecord::Base
  belongs_to :categories
  belongs_to :user
  validates :name, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :description, presence: true, uniqueness: true
  validates :price, presence: true


  has_attached_file :image, styles: { small: "64x64", med: "100x100", large: "200x200" }
    validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]



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
