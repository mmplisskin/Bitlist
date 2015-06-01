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



require "rubygems"
require "json"
require "net/http"




end
