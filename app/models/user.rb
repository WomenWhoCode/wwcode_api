class User < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable, :omniauthable
  include DeviseTokenAuth::Concerns::User
<<<<<<< HEAD
=======
  has_many :subscribes
<<<<<<< HEAD
>>>>>>> 3b66ce485b782af4aba0c14478d8f314fa29b142
=======
  has_one :profile
>>>>>>> d645854ae381c97b99899a68d4893589367c50fa
end
