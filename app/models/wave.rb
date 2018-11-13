class Wave < ApplicationRecord
  belongs_to :board
  validates :status, presence: true
end
