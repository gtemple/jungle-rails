class User < ApplicationRecord
  has_secure_password

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, uniqueness: {case_sensitive: false}, presence: true
  validates :password, length: {minimum: 3}, presence: true

  def self.authenticate_with_credentials(email, password)
    user = User.find_by_email(email.delete(' ').downcase)
    if user && user.authenticate(password)
      return user
    end
    nil
  end

end
