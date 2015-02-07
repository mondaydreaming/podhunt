# == Schema Information
#
# Table name: podcasts
#
#  id         :integer          not null, primary key
#  name       :string
#  podcaster  :text
#  blurb      :text
#  url        :text
#  image      :text
#  genres     :text
#  created_at :datetime
#  updated_at :datetime
#

class Podcast < ActiveRecord::Base
end
