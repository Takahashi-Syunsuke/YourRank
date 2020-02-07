class Rank < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :rank_tags, dependent: :destroy
  has_many :tags, through: :rank_tags

  validates :title, presence: true
  validates :rank_1, presence: true
  validates :rank_2, presence: true
  validates :rank_3, presence: true
  validates :user_id, presence: true

  def self.search(search)
    return Rank.all unless search
    Rank.where(['title LIKE ?', "%#{search}%"])
  end
end
