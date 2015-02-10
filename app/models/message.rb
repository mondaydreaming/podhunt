# == Schema Information
#
# Table name: messages
#
#  id          :integer          not null, primary key
#  comment     :text
#  listener_id :integer
#  podcast_id  :integer
#  episode_id  :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Message < ActiveRecord::Base
    belongs_to :podcast
    belongs_to :listener
    validates :comment, :presence => true
end
