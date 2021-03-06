class User < ApplicationRecord
  has_many :qualifications
  has_many :licenses
  has_many :work_experiences


  before_save { self.email = email.downcase }
  validates :firstname, presence: true, length: { maximum: 60 }
  validates :surname, presence: true, length: { maximum: 60 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }, allow_nil: true

  # Returns the hash digest of the given string.
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

  def feed
    Qualification.where("user_id = ?", id)
  end

  def license
    License.where("user_id = ?", id)
  end
  def work
    WorkExperience.where("user_id = ?", id)
  end
end
