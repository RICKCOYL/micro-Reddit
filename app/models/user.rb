class User < ApplicationRecord
    validates :name,  presence: true, length: { maximum: 50 }
    validates :name, :uniqueness => true
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
    has_many :posts, dependent: :destroy
end
