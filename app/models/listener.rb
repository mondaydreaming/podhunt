# == Schema Information
#
# Table name: listeners
#
#  id              :integer          not null, primary key
#  firstname       :string
#  lastname        :string
#  username        :string
#  password_digest :text
#  dob             :date
#  country         :string
#  email           :string
#  interests       :text
#  image           :text
#  created_at      :datetime
#  updated_at      :datetime
#

class Listener < ActiveRecord::Base
    has_secure_password
end
