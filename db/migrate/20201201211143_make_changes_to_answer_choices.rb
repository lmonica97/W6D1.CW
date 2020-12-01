class MakeChangesToAnswerChoices < ActiveRecord::Migration[5.2]
  def change
    add_column :answer_choices, :question_choice_id, :integer, null: false 
  end
end
