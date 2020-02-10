class Rank < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :rank_tags, dependent: :destroy
  has_many :tags, through: :rank_tags

  validates :title, presence: true
  validates :title, length: { minimum: 1, maximum: 25 }
  validates :rank_1, presence: true
  validates :rank_1, length: { minimum: 1, maximum: 30 }
  validates :rank_2, presence: true
  validates :rank_2, length: { minimum: 1, maximum: 30 }
  validates :rank_3, presence: true
  validates :rank_3, length: { minimum: 1, maximum: 30 }
  validates :user_id, presence: true

  validates :content_1, length: { maximum: 240 }
  validates :content_2, length: { maximum: 240 }
  validates :content_3, length: { maximum: 240 }


  mount_uploader :image_1, ImageUploader
  mount_uploader :image_2, ImageUploader
  mount_uploader :image_3, ImageUploader

  def self.search(search)
    return Rank.all unless search
    Rank.where(['title LIKE ?', "%#{search}%"])
  end
end
