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
    has_and_belongs_to_many :podcasts
    has_many :messages
    has_many :active_relationships, class_name:  "Relationship",
                                      foreign_key: "follower_id",
                                      dependent:   :destroy
    has_many :passive_relationships, class_name:  "Relationship",
                                       foreign_key: "followed_id",
                                       dependent:   :destroy



    has_many :following, through: :active_relationships, source: :followed
    has_many :followers, through: :passive_relationships, source: :follower

      # Follows a listener.
  def follow(other_listener)
    active_relationships.create(followed_id: other_listener.id)
  end

  # Unfollows a user.
  def unfollow(other_listener)
    active_relationships.find_by(followed_id: other_listener.id).destroy
  end

  # Returns true if the current listener is following the other listener.
  def following?(other_listener)
    following.include?(other_listener)
  end





end
