class CreateNutritionTrackers < ActiveRecord::Migration[6.0]
  def change
    create_table :nutrition_trackers do |t|
      t.integer :user_id
      t.integer :carb_intake
      t.integer :protien_intake
      t.integer :fat_intake
      t.integer :calories
      t.date :date

      t.timestamps
    end
  end
end
