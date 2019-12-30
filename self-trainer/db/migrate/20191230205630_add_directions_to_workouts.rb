class AddDirectionsToWorkouts < ActiveRecord::Migration[6.0]
  def change
    add_column :workouts, :directions, :string
  end
end
