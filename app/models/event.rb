class Event < ActiveRecord::Base
  belongs_to :network
  has_many :subscribes
  has_many :posts
end
