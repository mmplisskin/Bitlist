class Item < ActiveRecord::Base

  belongs_to :categories
  belongs_to :user

  validates(:name, presence: true)
  validates(:city, presence: true, length: { maximum: 25 })
  validates(:state, presence: true)
  validates(:description, presence: true, uniqueness: true, length: { minimum: 60, maximum: 300 })
  validates(:price, presence: true,:numericality => true, length: { maximum: 6 })
  validates(:phone_number, presence: true,:numericality => true, length: { minimum: 10, maximum: 10 })




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
