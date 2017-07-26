class User < ApplicationRecord
#rails g migration add_index_to_users_email
  #rails generate migration add_password_digest_to_users password_digest:string
  before_save {self.email = email.downcase}
  has_one :shift

  validates :name, presence: true, length: {maximum: 50},
    uniqueness: {case_sensitive: false}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email, presence: true, length: {maximum: 255},
    format: {with: VALID_EMAIL_REGEX},
    uniqueness: {case_sensitve: false}
    has_secure_password
    validates :password, presence: true, length: { minimum: 6 }, allow_nil: true
   scope :normal_user, -> {where(status: 'normal')}
   scope :off_user, -> {where(status: 'off')}
   scope :ill_user, -> {where(status: 'sick')}
   #scope :line, -> {where(line: true)}
   #scope :grill, -> {where(grill: true)} 
   #scope :cash, -> {where(cash: true)}
   #scope :juice, -> {where(juice: true)}
   #scope :baking, -> {where(baking: true)}
   #scope :press, -> {where(press: true)}





    def User.digest(string)
      cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST:
        BCrypt::Engine.cost
      BCrypt::Password.create(string, cost: cost)
    end
    def self.line
      where(line: true)
    end
    def self.grill
      where(grill: true)
    end
    def self.cashier
      where(cashier: true)
    end
    def self.baking
      where(baking: true)
    end
    def self.coldpress
      where(coldpress: true)
    end
    def self.juice
      where(juice: true)
    end
    
    
    

end
