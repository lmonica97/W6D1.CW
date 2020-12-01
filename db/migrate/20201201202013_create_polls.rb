class CreatePolls < ActiveRecord::Migration[5.2]
  def change
    create_table :polls do |t|
      t.string :title_of_poll, null: false 
      t.integer :user_poll_id, null: false 
      t.timestamps
    end

    add_index :polls, :user_poll_id
  end
end
