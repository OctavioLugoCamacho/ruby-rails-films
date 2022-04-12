class User < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_secure_password
  validates :name, presence: true
  validates :email, presence: true,
    format: { with: /\S+@\S+/ },
    uniqueness: { case_sensitive: false }
  validates :username, presence: true,
    format: { with: /\A[A-Z0-9]+\z/i },
    uniqueness: { case_sensitive: false }
end
