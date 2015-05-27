class CategoriesController < ApplicationController

  def index
    @categories=Category.all
  end

  def show
    @categories=Category.where ("name = '#{params[:name]}'")
    @items=Item.where("category_id=#{@categories[0].id}")
  end

  def view
  end

  def edit
  end

  def create
  end

  def destroy
  end
end
