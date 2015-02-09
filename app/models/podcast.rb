# == Schema Information
#
# Table name: podcasts
#
#  id            :integer          not null, primary key
#  title         :string
#  feed_url      :text
#  author        :text
#  description   :text
#  categories    :text
#  image         :text
#  last_modified :text
#  url           :text
#  entries       :text
#  created_at    :datetime
#  updated_at    :datetime
#

class Podcast < ActiveRecord::Base
    has_many :episodes
    has_and_belongs_to_many :listeners
    has_many :messages
    serialize :entries, Array
end
