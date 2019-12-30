class CreateNutritions < ActiveRecord::Migration[6.0]
  def change
    create_table :nutritions do |t|
      t.string :intake

      t.timestamps
    end
  end
end
