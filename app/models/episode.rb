# == Schema Information
#
# Table name: episodes
#
#  id         :integer          not null, primary key
#  title      :text
#  published  :date
#  url        :text
#  topics     :text
#  summary    :text
#  duration   :string
#  podcast_id :integer
#

class Episode < ActiveRecord::Base
    belongs_to :podcast
    has_many :messages
end
