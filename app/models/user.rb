class User < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable, :omniauthable
  include DeviseTokenAuth::Concerns::User
  has_many :subscribes
  has_one :profile
  has_many :posts
  belongs_to :network
  has_many :personalization_details
  validates :username, presence: true


end
