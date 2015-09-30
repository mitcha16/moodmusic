class CreateUncomfortables < ActiveRecord::Migration
  def change
    create_table :uncomfortables do |t|
      t.string :song

      t.timestamps null: false
    end
  end
end
