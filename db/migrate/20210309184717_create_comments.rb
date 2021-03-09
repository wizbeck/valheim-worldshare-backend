class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.integer :world_id
      t.text :content
      t.string :author
      t.timestamps
    end
  end
end
