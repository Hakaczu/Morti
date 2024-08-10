class AddStatusToWarchests < ActiveRecord::Migration[7.0]
  def change
    add_column :warchests, :status, :string
  end
end
