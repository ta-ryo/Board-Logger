class Board < ApplicationRecord
  has_one :mood

  validates :location, presence: true
  belongs_to :user
end
