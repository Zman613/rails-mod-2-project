class AddStartWeightToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :start_weight, :integer
  end
end
