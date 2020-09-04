class Transaction < ApplicationRecord
    belongs_to :user_account
    belongs_to :category
    validates :amount, presence: true
end
