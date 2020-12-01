# == Schema Information
#
# Table name: questions
#
#  id                :bigint           not null, primary key
#  text              :string           not null
#  polls_question_id :integer          not null
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
class Question < ApplicationRecord
    validates :text, presence: true
    
    belongs_to :poll,
    primary_key: :id,
    foreign_key: :polls_question_id,
    class_name: :Poll 

    has_many :answer_choices
    primary_key: :id,
    foreign_key: :question_choice_id,
    class_name: :AnswerChoice

end
