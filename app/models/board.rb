class Board < ApplicationRecord
  has_one :mood
  has_many :middle, dependent: :destroy
  has_many :map, dependent: :destroy
  has_many :manner, dependent: :destroy
  has_many :wave, dependent: :destroy
  validates :location, presence: true
  belongs_to :user
end
