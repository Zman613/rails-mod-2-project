class AddFatToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :fat, :float, :default => 0.4
  end
end
