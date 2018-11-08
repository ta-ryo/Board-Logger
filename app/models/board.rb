class Board < ApplicationRecord
  has_one :mood
  belongs_to :user
end
