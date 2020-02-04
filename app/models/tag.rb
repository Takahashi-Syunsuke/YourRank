class Tag < ApplicationRecord
  has_many :rank_tags, dependent: :destroy
  has_many :ranks, through: :rank_tags

  validates :name, presence: true
end
