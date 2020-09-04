user_account = UserAccount.create(name: 'Current Account', balance: 1000)

transaction = Transaction.create(user_account_id: 1, category_id: 1, amount: 10.00, kind: 'deposit', date: Date.today)

transaction_two = Transaction.create(user_account_id: 1, category_id: 1, amount: 10.00, kind: 'withdraw', date: Date.today)

category = Category.create(name: 'Money')