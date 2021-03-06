class Message < ActiveRecord::Base
  belongs_to :user
  has_many :posts

  validates :content, presence: true, length: { minimum: 10 }

  validates :user, presence: true
end
