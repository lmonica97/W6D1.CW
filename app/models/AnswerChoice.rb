# == Schema Information
#
# Table name: answer_choices
#
#  id                 :bigint           not null, primary key
#  choice_a           :string           not null
#  choice_b           :string           not null
#  choice_c           :string           not null
#  choice_d           :string           not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  question_choice_id :integer          not null
#
class AnswerChoice < ApplicationRecord
    validates :choice_a, :choice_b, :choice_c, :choice_d, presense: true
    
    has_many :responses,
    primary_key: :id,
    foreign_key: :question_id,
    class_name: :Response

    belongs_to :question,
    primary_key: :id,
    foreign_key: :question_choice_id,
    class_name: :Question 
end
