class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :ranks, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy

  validates :nickname, presence: true
  validates :nickname, length: { minimum: 1, maximum: 10 }
  validates :profile, length: { maximum: 60 }

  mount_uploader :image, ImageUploader

end
