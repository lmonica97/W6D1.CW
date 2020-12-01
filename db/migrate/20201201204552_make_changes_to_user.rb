class MakeChangesToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username_id, :integer, null: false 
  end
end
