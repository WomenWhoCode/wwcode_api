class Network < ActiveRecord::Base
  has_many :events
  has_many :subscribes
  has_many :profiles
end
