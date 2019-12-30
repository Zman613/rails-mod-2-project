class CreateWorkoutTrackers < ActiveRecord::Migration[6.0]
  def change
    create_table :workout_trackers do |t|
      t.integer :done
      t.string :type
      t.integer :user_id

      t.timestamps
    end
  end
end
