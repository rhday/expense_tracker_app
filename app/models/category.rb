class Category < ApplicationRecord
    has_many :users, through: :transactions
    has_many :transactions
    validates :name, presence: true
end
