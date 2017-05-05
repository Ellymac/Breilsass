class User < ApplicationRecord
  validates :admin, presence: true
  validates :username, presence: true
  validates :password, presence: true
  validates :email, presence: true
  has_many :article
end
