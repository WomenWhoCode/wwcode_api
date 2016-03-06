class User < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable, :omniauthable
  include DeviseTokenAuth::Concerns::User
  has_many :subscribes
  has_one :profile
  has_many :posts
  belongs_to :network
  has_many :personalization_details
  validates :username, :email, :password, :access_code, presence: true

  validate :correct_access_code


  def correct_access_code
    p "does this work"
    p access_code
    p "maybe?"
    accessCode = UserAccessCode.find_by(token: access_code)
    e_mail = UserAccessCode.find_by(email: email)
    if accessCode == nil
      @user.errors.add(:access_code, "does not exist")
    elsif accessCode.email != email
      @user.errors.add(:access_code, "does not match e-mail address")
    elsif e_mail.token != access_code
      @user.errors.add(:access_code, "is not the correct access code for this e-mail")
    end
  end

end
