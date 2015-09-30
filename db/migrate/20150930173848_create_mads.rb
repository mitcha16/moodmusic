class CreateMads < ActiveRecord::Migration
  def change
    create_table :mads do |t|
      t.string :song

      t.timestamps null: false
    end
  end
end
