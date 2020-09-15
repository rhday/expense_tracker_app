class TransactionsController < ApplicationController

    before_action :set_user

    def index
      @transactions = @user.transactions
      render json: @transactions
    end 

    def show
        @transaction = Transaction.find(params[:id])
        render json: @transaction 
    end

    def create
        @transaction = @user.transactions.new(transaction_params)
        if @user.update_balance(@transaction) != 'Balance too low.'
            @transaction.save
            render json: @transaction
        else
            render json: {error: 'Balance too low.'}
        end 
    end

    def destroy 
        
    end 

    private 

    def set_user
        @user = User.find(params[:user_id])
    end 

    def transaction_params
        params.require(:transaction).permit(:user_id, :category_id, :amount, :kind, :date)
    end 

end
