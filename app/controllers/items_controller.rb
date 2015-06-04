 class ItemsController < ApplicationController



  def index
    @items=Item.all
  end



  def show

    @item=Item.find(params[:id]||params[:name])
    @category=Category.find(@item.category_id)

    if @item.user_id !=nil
      @user=User.find(@item.user_id)
    end



    response = Net::HTTP.get_response(URI.parse("https://api.bitcoinaverage.com/exchanges/USD"))
    parsed_response = JSON.parse(response.body)
    rate=parsed_response["bitfinex"]["rates"]["last"]
    @rate=rate.to_f




  end



  def new
		@item=Item.new
	end

  def create

		@item=Item.new(item_params)

    if current_user
    @item.user_id = current_user.id
    end


		if @item.save
      @category=Category.find(@item.category_id)

		    redirect_to category_item_path(@category.name, @item.id)

		else
			render :new
		end
	end

  def edit
    @item = Item.find_by(id: params[:id])

    unless current_user && current_user.id == @item.user_id
      redirect_to root_path
      logger.info @item.inspect
    end
  end


  def update

      # @categories=category(params[:id])

      @item=Item.find(params[:id])


      if @item.update_attributes(item_params)
        @category=Category.find(@item.category_id)
        redirect_to "/categories/#{@category.name}/items/#{@item.id}"
      else
        render :edit
      end
  end

  def destroy
    # logger.info @item.inspect
      @item=Item.find(params[:id])
      @item.destroy
      redirect_to root_path
  end

  def search
    # raise params.inspect
    @item = Item.search(params)
  end



private
  def item_params
    params.require(:item).permit(:name,:location, :price, :description, :category_id, :phone_number, :user_id)

  end

end
