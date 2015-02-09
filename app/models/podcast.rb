# == Schema Information
#
# Table name: podcasts
#
#  id         :integer          not null, primary key
#  name       :string
#  podcaster  :text
#  blurb      :text
#  image      :text
#  genres     :text
#  created_at :datetime
#  updated_at :datetime
#

class Podcast < ActiveRecord::Base
    has_many :episodes
    has_and_belongs_to_many :listeners
    serialize :entries, Array
end
