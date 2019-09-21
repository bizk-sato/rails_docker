# frozen_string_literal: true

class SessionsController < ApplicationController
  def create
    @user = User.find_by(name: params[:name], password: params[:password])
    if @user
      session[:user_id] = @user.id
    else
      flash.alert = '名前とパスワードが一致しません！'
    end
    redirect_to :users
  end

  def destroy
    session[:user_id] = nil
    redirect_to :users
  end
end
