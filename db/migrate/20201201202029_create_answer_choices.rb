class CreateAnswerChoices < ActiveRecord::Migration[5.2]
  def change
    create_table :answer_choices do |t|
      t.string :choice_a, null: false 
      t.string :choice_b, null: false
      t.string :choice_c, null: false 
      t.string :choice_d, null: false 
      t.timestamps
    end
    add_index :answer_choices, :choice_a 
    add_index :answer_choices, :choice_b 
    add_index :answer_choices, :choice_c 
    add_index :answer_choices, :choice_d 
  end
end
