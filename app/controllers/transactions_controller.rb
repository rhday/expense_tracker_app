class TransactionsController < ApplicationController

    before_action :set_user

    def index
      @transactions = @user.transactions
      render json: @transactions
    end 

    def show
       
    end

    def create
        
    end

    def destroy 
        
    end 

    private 

    def set_user
        @user = User.find(params[:user_id])
    end 

    def user_params
        params.require(:transaction).permit(:user_id, :category_id, :amount, :kind, :date)
    end 

end
