user = User.create(name: 'Current Account', balance: 1000)

category = Category.create(name: 'Money')

transaction = Transaction.create!(user_id: 1, category_id: 1, amount: 10.00, kind: 'deposit', date: Date.today)

transaction_two = Transaction.create(user_id: 1, category_id: 1, amount: 10.00, kind: 'withdraw', date: Date.today)
