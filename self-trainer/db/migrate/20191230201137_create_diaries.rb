class CreateDiaries < ActiveRecord::Migration[6.0]
  def change
    create_table :diaries do |t|
      t.integer :user_id
      t.string :nutrition_tracker
      t.string :workout_tracker
      t.string :weight_tracker

      t.timestamps
    end
  end
end
