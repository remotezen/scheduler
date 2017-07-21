class User < ApplicationRecord
#rails g migration add_index_to_users_email
  #rails generate migration add_password_digest_to_users password_digest:string
  before_save {self.email = email.downcase}
  has_many :events

  validates :name, presence: true, length: {maximum: 50},
    uniqueness: {case_sensitive: false}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email, presence: true, length: {maximum: 255},
    format: {with: VALID_EMAIL_REGEX},
    uniqueness: {case_sensitve: false}
    has_secure_password
    validates :password, presence: true, length: { minimum: 6 }, allow_nil: true

     scope :normal_user, -> {where(status: 'normal')}

    def User.digest(string)
      cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST:
        BCrypt::Engine.cost
      BCrypt::Password.create(string, cost: cost)
    end




end
