class UserAccountsController < ApplicationController

    def index
        @users = User.all 
        render json: @users
    end 

    def create

    end

    def show

    end

    def destroy 

    end 

    private 

    def user_params
        params.require(:user).permit(:name, :balance)
    end 

end
