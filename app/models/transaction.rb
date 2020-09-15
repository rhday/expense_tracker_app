class Transaction < ApplicationRecord
    belongs_to :user
    belongs_to :category
    validates :amount, presence: true
    #below means that a ':kind' of value must be included. The user must specify whether it is a deposit or a withdrawal.
    validates_inclusion_of :kind, :in => ['deposit', 'withdraw']
end
