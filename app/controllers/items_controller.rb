 class ItemsController < ApplicationController
  # before_filter :authenticate_user, only: [:new, :create]

  def index
    @items=Item.all
    respond_to do |format|
        format.html {
            render
        }
        format.json {
            render json: @items
        }
    end
  end



  def show

    @item=Item.find(params[:id])

    @category=Category.find(@item.category_id)


    if @item.user_id !=nil
      @user=User.find(@item.user_id)
    end



      response = Net::HTTP.get_response(URI.parse("https://api.bitcoinaverage.com/exchanges/USD"))
      parsed_response = JSON.parse(response.body)
      rate=parsed_response["bitfinex"]["rates"]["last"]

      @rate=rate.to_f

      respond_to do |format|
          format.html {
              render
          }
          format.json {
              render json: @item
          }




      end

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
        # flash.now.notice = 'Item was successfully listed!.'
		    redirect_to category_item_path(@category.name, @item.id)

		else
      flash.now[:error] = @item.errors.full_messages
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
        redirect_to category_item_path(@category.name, @item.id)
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
    @items = Item.search(params)
  end



private
  def item_params
    params.require(:item).permit(:name, :city, :state, :zipcode, :price, :description, :image, :category_id, :phone_number, :user_id)

  end

end
