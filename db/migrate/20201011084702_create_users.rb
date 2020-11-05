class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :introduction
      t.string :profile_image_id
      t.timestamps  null: false
    end
  end
end
