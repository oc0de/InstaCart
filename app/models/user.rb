class User < ApplicationRecord
  WORKFLOW_STATES = ['applied', 'quiz_started', 'quiz_completed', 'onboarding_requested', 'onboarding_completed', 'hired', 'rejected']

  before_save { self.email = email.downcase }
  before_validation :initial_workflow_state, on: :create
  before_validation :initial_background_check, on: :create

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

  validates :first_name, presence: true,
                    length: { minimum: 3, maximum: 50 }

  validates :last_name, presence: true,
                    length: { minimum: 3, maximum: 50 }

  validates :phone_number, presence: true, uniqueness: true

  validates :zip_code, presence: true

  validates :workflow_state, presence: true

  validates :password, presence: true, length: { minimum: 6 }

  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }, allow_nil: true

  private
    def initial_workflow_state
      self.workflow_state = WORKFLOW_STATES.first unless workflow_state
    end

    def initial_background_check
      self.permission = false
    end

end
