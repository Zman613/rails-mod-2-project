class CreateHistories < ActiveRecord::Migration[6.0]
  def change
    create_table :histories do |t|
      t.string :goal
      t.integer :start_weight
      t.integer :goal_weight
      t.string :workout_tracker
      t.string :nutrition_tracker
      t.string :weight_tracker
      t.integer :user_id

      t.timestamps
    end
  end
end
