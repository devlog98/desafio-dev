class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.references :transaction_type, null: false, foreign_key: true
      t.date :date
      t.decimal :value
      t.string :card
      t.time :hour
      t.references :store, null: false, foreign_key: true

      t.timestamps
    end
  end
end
