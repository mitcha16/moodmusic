class CreateHappies < ActiveRecord::Migration
  def change
    create_table :happies do |t|
      t.string :song

      t.timestamps null: false
    end
  end
end
