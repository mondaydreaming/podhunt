# == Schema Information
#
# Table name: episodes
#
#  id         :integer          not null, primary key
#  title      :text
#  published  :date
#  url        :text
#  summary    :text
#  duration   :string
#  subtitle   :text
#  podcast_id :integer
#

class Episode < ActiveRecord::Base
    belongs_to :podcast
end
