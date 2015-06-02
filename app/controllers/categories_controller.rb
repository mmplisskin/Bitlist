class CategoriesController < ApplicationController


  def index
    @categories=Category.all


  end

  def show
      @category = Category.find_by(name: params[:name])



  end

  def about

  end





  def create
  end

  def destroy
  end
end
