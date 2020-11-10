class Comment < ApplicationRecord
  validates :name,  presence: true, length: { maximum: 50 }
  validates :name, :uniqueness => true
  validates :body,  presence: true, length: { maximum: 50 }
  validates :body, :uniqueness => true
  has_many :posts
  belongs_to :user
end
