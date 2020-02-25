class User < ApplicationRecord
  validates :name, presence: true
  validates :name, length: { maximum: 15 }
  validates :email, presence: true
  validates :email, format: { with: /\A(\w+)@(\w+)\.[a-z]+\z/ }
  validates :password, length: { in: 8..32 }
  validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/ }

  
  has_secure_password
end
