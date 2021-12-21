class CreateStores < ActiveRecord::Migration[7.0]
  def change
    create_table :stores do |t|
      t.string :name
      t.string :owner
      t.string :document

      t.timestamps
    end
  end
end
