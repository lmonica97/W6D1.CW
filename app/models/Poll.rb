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

end
