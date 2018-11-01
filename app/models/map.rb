class Map < ApplicationRecord
  belongs_to :board
  geocoded_by :address
  after_validation :geocode
end
