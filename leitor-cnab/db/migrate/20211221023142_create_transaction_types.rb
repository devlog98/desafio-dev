class CreateTransactionTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :transaction_types do |t|
      t.integer :identifier
      t.string :name
      t.boolean :operation

      t.timestamps
    end
  end
end
