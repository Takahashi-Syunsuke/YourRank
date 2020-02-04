class Like < ApplicationRecord
  belongs_to :rank
  belongs_to :user

  validates :rank_id, presence: true
  validates :user_id, presence: true
end
