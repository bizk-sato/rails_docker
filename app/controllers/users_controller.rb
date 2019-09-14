class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user=User.new
  end

  def create
    @user = User.new(controller_params)
    if @user.save
      redirect_to :users
    else
      render "new"
    end
  end

  def edit
    @user=User.find(params[:id])
  end

  def update
    @user=User.find_by(id:params[:id])
    @user.attributes = controller_params
    @user.save
    redirect_to :users
  end

  def destroy
    @user=User.find(params[:id])
    @user.destroy
    redirect_to :users
  end

  private

  def controller_params
    # キーワード: ストロングパラメーター
    params.require(:user).permit(
      :name,
      :age,
      :gender,
      :password,
      :description
    )
  end
end
