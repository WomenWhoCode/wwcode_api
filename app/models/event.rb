class Event < ActiveRecord::Base
  belongs_to :network
  has_many :subscribes
end
