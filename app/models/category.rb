class Category < ApplicationRecord
    has_many :user_accounts, through: :transactions
    has_many :transactions
    validates :name, presence: true
end
