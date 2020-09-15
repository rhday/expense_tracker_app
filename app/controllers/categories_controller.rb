class CategoriesController < ApplicationController

    def index
      
    end 

    def create
        
    end

    def show
        
    end

    def destroy 
        
    end 

    private 

    def user_params
        params.require(:transaction).permit(:user_id, :category_id, :amount, :kind, :date)
    end 
    
end
