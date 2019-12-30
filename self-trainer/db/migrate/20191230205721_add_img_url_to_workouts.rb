class AddImgUrlToWorkouts < ActiveRecord::Migration[6.0]
  def change
    add_column :workouts, :img_url, :string
  end
end
