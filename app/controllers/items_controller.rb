class ItemsController < ApplicationController

  def index
    @items=Item.all
  end

  def show

    @item=Item.where("name='#{params[:name]}'")


  end


  def new
		@items=Item.new
	end

  def create
		@item=Item.new(item_params)

		if @item.save
			redirect_to root_path
		else
			render :new
		end
	end



  def updated
      @item=Item.find(item_params)

      if @item.update_attributes(item_params)
        redirect_to items_path
      else
        render :edit
      end
  end

  def destroy
      @item=Item.find(params[:id])
      @item.destroy
      redirect_to items_path
  end



private
  def item_params
    params.require(:name).permit(:location, :price, :description, :category_id, :phone_number, :id)

end

end
