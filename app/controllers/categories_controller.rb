class CategoriesController < ApplicationController

  def index
    @categories=Category.all
  end

  def show
    if params[:name]

      @categories = Category.where ("name = '#{params[:name]}'")


      @items=Item.where("category_id=#{@categories[0].id}")

    elsif params[:id]
      @categories = Category.find(params[:id])
      
    end
  end




  def edit
  end

  def create
  end

  def destroy
  end
end
