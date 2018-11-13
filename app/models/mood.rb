class Mood < ApplicationRecord
  belongs_to :board
  validates :mood, presence: true
end
