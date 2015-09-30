class CreateSads < ActiveRecord::Migration
  def change
    create_table :sads do |t|
      t.string :song

      t.timestamps null: false
    end
  end
end
