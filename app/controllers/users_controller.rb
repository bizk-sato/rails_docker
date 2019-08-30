class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user=User.find_by(id:params[:id])
  end

  def new
    @user=User.new
  end

  def create
    @user=User.new(
      name:params[:name],
      age:params[:age],
      gender:params[:gender],
      description:params[:description]
    )
    @user.save
    redirect_to("/users")
  end

  def edit
    @user=User.find_by(id:params[:id])
  end

  def update
    @user=User.find_by(id:params[:id])
    @user.name=params[:name]
    @user.age=params[:age]
    @user.gender=params[:gender]
    @user.description=params[:description]
    @user.save
    redirect_to("/users")
  end

  def destroy
    @user=User.find_by(id:params[:id])
    @user.destroy
    redirect_to("/users")
  end
end
