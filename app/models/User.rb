# == Schema Information
#
# Table name: users
#
#  id          :bigint           not null, primary key
#  username    :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  username_id :integer          not null
#
class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true 
    
    has_many :polls,
    primary_key: :id,
    foreign_key: :user_poll_id,
    class_name: :Poll 

    has_many :responses,
    primary_key: :id,
    foreign_key: :user_answer_id,
    class_name: :Response
end
