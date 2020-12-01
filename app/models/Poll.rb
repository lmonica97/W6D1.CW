# == Schema Information
#
# Table name: polls
#
#  id            :bigint           not null, primary key
#  title_of_poll :string           not null
#  user_poll_id  :integer          not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Poll < ApplicationRecord
    belongs_to :user,
    primary_key: :id,
    foreign_key: :user_poll_id 
    class_name: :User 

    has_many :questions,
    primary_key: :id,
    foreign_key: :polls_question_id,
    class_name: :Question
end
