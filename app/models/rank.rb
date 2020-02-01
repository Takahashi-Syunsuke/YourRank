class Rank < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :likes
  has_many :tags, through: :rank_tags

  validates :title, presence: true
  validates :rank_1, presence: true
  validates :rank_2, presence: true
  validates :rank_3, presence: true
  validates :user_id, presence: true
end
