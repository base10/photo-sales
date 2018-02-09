class User < ApplicationRecord
  #has_secure_password

  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true

  def logged_in?
    true
  end
end
