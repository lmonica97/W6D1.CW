# == Schema Information
#
# Table name: responses
#
#  id             :bigint           not null, primary key
#  question_id    :integer          not null
#  user_answer_id :integer          not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class Response < ApplicationRecord
    belongs_to :question_response,
    primary_key: :id,
    foreign_key: :question_id,
    class_name: :AnswerChoice

    belongs_to :user,
    primary_key: :id,
    foreign_key: :user_answer_id,
    class_name: :User

end
