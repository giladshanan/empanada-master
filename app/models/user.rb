class User < ActiveRecord::Base
  include BCrypt

  has_many :orders, foreign_key: :eater_id
  has_many :ordered_empanadas, through: :orders

  validates :username, :name, presence: true
  validate :validate_password

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(plain_text_password)
    @raw_password = plain_text_password
    @password = Password.create(plain_text_password)
    self.password_hash = @password
  end

  def authenticate(plain_text_password)
    self.password == plain_text_password
  end

  def validate_password
    if @raw_password.nil?
      errors.add(:password, "is required")
    elsif @raw_password.length < 6
      errors.add(:password, "must be 6 characters or more")
    end
  end
end
