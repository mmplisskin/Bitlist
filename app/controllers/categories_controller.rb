class CategoriesController < ApplicationController

  def index
    @categories=Category.all
    respond_to do |format|
        format.html {
            render
        }
        format.json {
            render json: @categories
        }
    end


  end

  def show
      @category = Category.find_by(name: params[:name])
      respond_to do |format|
          format.html {
              render
          }
          format.json {
            render json: @category.to_json(:include => :items)
          }
      end


    end
end
