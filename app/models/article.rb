class Article < ApplicationRecord
  validates :title, presence: true, length: {maximum: 140}
  validates :content, presence: true
  acts_as_commentable
end
