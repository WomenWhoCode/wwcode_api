class User < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable,
          :confirmable, :omniauthable
  include DeviseTokenAuth::Concerns::User
<<<<<<< HEAD
=======
  has_many :subscribes
>>>>>>> 3b66ce485b782af4aba0c14478d8f314fa29b142
end
