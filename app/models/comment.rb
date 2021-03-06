class Comment < ApplicationRecord
  belongs_to :rank
  belongs_to :user

  validates :content, presence: true
  validates :rank_id, presence: true
  validates :user_id, presence: true

  validates :content, length: { minimum: 1, maximum: 50 }
end
