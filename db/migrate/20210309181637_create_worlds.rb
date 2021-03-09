class CreateWorlds < ActiveRecord::Migration[6.1]
  def change
    create_table :worlds do |t|
      t.string :name
      t.string :seed
      t.text :description
      t.string :image_url
      t.integer :likes, :default => 0
      t.string :creator
      t.timestamps
    end
  end
end
