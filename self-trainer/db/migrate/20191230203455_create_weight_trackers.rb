class CreateWeightTrackers < ActiveRecord::Migration[6.0]
  def change
    create_table :weight_trackers do |t|
      t.integer :weight
      t.date :date
      t.integer :user_id

      t.timestamps
    end
  end
end
