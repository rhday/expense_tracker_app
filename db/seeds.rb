user_account = UserAccount.create(name: 'Current Account', balance: 1000)

transaction = Transaction.create(account_id: 1, category_id: 1, amount: 10, kind: 'deposit', date:Date.today)

category = Category.create(name: 'Found Money')