class Article < ApplicationRecord
  validates :title, presence: true, length: {maximum: 140}
  validates :content, presence: true
  has_many :comments
  belongs_to :user
end
