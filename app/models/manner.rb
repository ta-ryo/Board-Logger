class Manner < ApplicationRecord
  belongs_to :board
  has_many :photo, dependent: :destroy
  validates :entry, presence: true
end
