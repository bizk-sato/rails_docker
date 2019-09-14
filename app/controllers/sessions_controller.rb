class SessionsController < ApplicationController
    def create
        @user=User.find_by(name: params[:name])
        if @user&.authenticate(params[:password])
            session[:user_id]=@user.id
        else
            flash.alert = "名前とパスワードが一致しません！"
        end
        redirect_to :users
    end

    def destroy
        session.destroy(:user_id)
        redirect_to :users
    end
end
