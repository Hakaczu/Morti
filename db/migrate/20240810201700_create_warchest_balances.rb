class CreateWarchestBalances < ActiveRecord::Migration[7.0]
  def change
    create_table :warchest_balances do |t|
      t.references :warchest, null: false, foreign_key: true
      t.decimal :balance
      t.date :month

      t.timestamps
    end
  end
end
