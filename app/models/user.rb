class User < ApplicationRecord
  has_many :activities
  has_many :reviews

  has_secure_password

  validates :name, :email, presence: true, uniqueness: true
  validates :email, format: { with: /\A\w+@\w+[.]\w+\z/, message: "is not a valid format." }
  validates :password, length: { minimum: 6 }
end
