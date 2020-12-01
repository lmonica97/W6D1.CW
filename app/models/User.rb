# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  username   :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord
    has_many :polls,
    primary_key: :id,
    foreign_key: :user_poll_id,
    class_name: :Poll 

    has_name :responses,
    primary_key: :id,
    foreign_key: :user_answer_id
    class_name: :Response
end
