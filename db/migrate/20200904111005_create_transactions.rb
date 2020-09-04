class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.integer :user_account_id
      t.integer :category_id
      t.float :amount
      t.string :kind
      t.datetime :date

      t.timestamps
    end
  end
end
