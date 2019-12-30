class AddGoalWeightToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :goal_weight, :integer
  end
end
