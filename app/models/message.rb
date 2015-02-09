class Message < ActiveRecord::Base
    belongs_to :episode
    belongs_to :listener
    validates :comment, :presence => true
end
