class ItemsController < ApplicationController

  def index
    @items=Item.all
  end




  def show
    @item=Item.find(params[:id])
  end


  def new
		@item=Item.new
	end

  def create
		@item=Item.new(item_params)

		if @item.save
		redirect_to root_path
		else
			render :new
		end
	end

  def edit

    @item=Item.find_by(id: params[:id])

  end


  def update

      # @categories=category(params[:id])

      @item=Item.find(params[:id])


      if @item.update_attributes(item_params)
        redirect_to root_path
      else
        render :edit
      end
  end

  def destroy
      @item=Item.find(params[:name])
      @item.destroy
      redirect_to items_path
  end



private
  def item_params
    params.require(:item).permit(:name,:location, :price, :description, :category_id, :phone_number)

  end

end
