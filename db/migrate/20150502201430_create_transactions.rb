class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :user_id
      t.integer :contact_id
      t.string :usd_amount
      t.string :pesos_amount
      t.string :btc_amount
      t.string :transaction_type

      t.timestamps null: false
    end
  end
end
