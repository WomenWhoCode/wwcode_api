class Network < ActiveRecord::Base
  has_many :events
  has_many :subscribes
end
