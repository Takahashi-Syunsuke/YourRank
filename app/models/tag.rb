class Tag < ApplicationRecord
  has_many :rank_tags

  validates :name, presence: true
end
