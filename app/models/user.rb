class User < ActiveRecord::Base
  validates :username, presence: true
  validates :email, presence: true
  validates :password, presence: true

  def self.authenticate(email, password)
    user = User.where(email: email, password: password).first
  end
end