class Middle < ApplicationRecord
  belongs_to :board, optional: true
  belongs_to :relationship, optional: true
end
