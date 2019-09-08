class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find_by(id:params[:id])
  end

  def new
    @user=User.new
  end

  def create
    @user=User.new(controller_params)
    @user.save
    #redirect_to(users_path)
    redirect_to action: :index
  end

  def edit
    @user=User.find_by(id:params[:id])
  end

  def update
    @user=User.find_by(id:params[:id])
    # @user.name=params[:name]
    # @user.age=params[:age]
    # @user.gender=params[:gender]
    # @user.description=params[:description]
    @user.attributes = controller_params
    @user.save
    #redirect_to("/users")
    redirect_to action: :index
  end

  def destroy
    @user=User.find_by(id:params[:id])
    @user.destroy
    #redirect_to(users_path)
    redirect_to action: :index
  end

  private

  def controller_params
    # キーワード: ストロングパラメーター
    params.require(:user).permit(
      :name,
      :age,
      :description,
      :gender,
    )
  end
end
