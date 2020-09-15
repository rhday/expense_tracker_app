class User < ApplicationRecord
    has_many :transactions
    has_many :categories, through: :transactions
    validates :name, :balance, presence: true

    #function to update user's balance
    def update_balance(transaction)
        #if the transaction is a deposit do this
        if transaction.kind == "deposit"
            #add transaction amount to the user's balance
            self.balance = self.balance + transaction.amount
            #persist to the database
            self.save
            #if the transaction is a withdraw do this
        elsif transaction.kind == "withdraw"
            #check that the transaction amount doesn't take the User's balance below zero!
            if self.balance >= transaction.amount
                #if the transaction is less than or equal to the amount in the user's account then persist that transaction to the database after subtracting the transaction from the balance.
                self.balance = self.balance - transaction.amount
                self.save
            else
                #if the user has too little funds to carry out a transaction then return a message telling them so
                return "Balance too low"
            end 
        end 
    end 
end
