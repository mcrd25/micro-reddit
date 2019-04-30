class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates :title, presence: true,
                    length: { maximum: 100, minimum: 4 }
  validates :body, presence: true,
  								 length: { minimum: 10, maximum: 500 }             
end
