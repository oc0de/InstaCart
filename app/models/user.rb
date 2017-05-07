class User < ApplicationRecord
  before_save { self.email = email.downcase }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

  validates :first_name, presence: true,
                    length: { minimum: 3, maximum: 50 }

  validates :last_name, presence: true,
                    length: { minimum: 3, maximum: 50 }

  validates :phone_number, presence: true, length: { maximum: 10 },
                           uniqueness: true

  validates :zip_code, presence: true

  validates :password, presence: true, length: { minimum: 6 }


  has_secure_password

end
