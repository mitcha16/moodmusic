class CreateUpsets < ActiveRecord::Migration
  def change
    create_table :upsets do |t|
      t.string :song

      t.timestamps null: false
    end
  end
end
