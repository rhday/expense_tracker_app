class Category < ApplicationRecord
    has_many :user_accounts, through: :transactions
    has_many :transactions
end
