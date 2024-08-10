class CreateWarchests < ActiveRecord::Migration[7.0]
  def change
    create_table :warchests do |t|
      t.string :name
      t.decimal :balance

      t.timestamps
    end
  end
end
