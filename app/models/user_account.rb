class UserAccount < ApplicationRecord
    has_many :transactions
    has_many :categories, through: :transactions
    validates :name, :balance, presence: true
end
