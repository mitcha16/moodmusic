class CreateCalms < ActiveRecord::Migration
  def change
    create_table :calms do |t|
      t.string :song

      t.timestamps null: false
    end
  end
end
