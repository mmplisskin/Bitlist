class UsersController < ApplicationController
  include SessionsHelper
  def index
    @users=User.all


  end

  def show
    @user=User.find(params[:id])
    # @item=Item.find(@user_id)
    # @user=User.find(@item.user_id)
  end

  def edit
    @user=User.find(params[:id])
  end

  def update
      @user=User.find(params[:id])

      if @user.update_attributes(user_params)
        redirect_to root_path
      else
        render :edit
      end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
      if @user.save
        session[:user_id] = @user.id.to_s
        redirect_to users_path
      else render :new
    end
  end



private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
