class User < ActiveRecord::Base
  # Include default devise modules.
<<<<<<< HEAD
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable, :omniauthable
=======
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable, :omniauthable
>>>>>>> acb528a6fef97843103110958afb65823b1fc067
  include DeviseTokenAuth::Concerns::User
  has_many :subscribes
  has_one :profile
  has_many :posts
end
