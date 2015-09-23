class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :uid
      t.string :email
      t.string :name
      t.string :image
      t.string :token
      t.string :provider
      t.timestamps null: false
    end
  end
end
