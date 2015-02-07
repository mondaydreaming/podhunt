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
#  length      :string
#  podcast_id  :integer
#

class Episode < ActiveRecord::Base
end
