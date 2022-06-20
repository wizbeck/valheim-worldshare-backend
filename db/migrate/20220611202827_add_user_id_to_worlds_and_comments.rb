class AddUserIdToWorldsAndComments < ActiveRecord::Migration[6.1]
  def change
    add_column :worlds, :user_id, :integer, foreign_key: true
    add_column :comments, :user_id, :integer, foreign_key: true
    add_index :worlds, :user_id
    add_index :comments, :user_id
  end
end
