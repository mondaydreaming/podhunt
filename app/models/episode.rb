# == Schema Information
#
# Table name: episodes
#
#  id          :integer          not null, primary key
#  name        :text
#  releasedate :date
#  url         :text
#  topics      :text
#  summary     :text
#  duration    :string
#  podcast_id  :integer
#

class Episode < ActiveRecord::Base
    belongs_to :podcast
end
