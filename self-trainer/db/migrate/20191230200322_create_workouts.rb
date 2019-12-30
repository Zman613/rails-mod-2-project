class CreateWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :workouts do |t|
      t.string :name
      t.string :type
      t.string :description

      t.timestamps
    end
  end
end
