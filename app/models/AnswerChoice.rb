# == Schema Information
#
# Table name: answer_choices
#
#  id         :bigint           not null, primary key
#  choice_a   :string           not null
#  choice_b   :string           not null
#  choice_c   :string           not null
#  choice_d   :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class AnswerChoice < ApplicationRecord

end
