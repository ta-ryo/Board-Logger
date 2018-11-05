class Photo < ApplicationRecord
  belongs_to :manner
  mount_uploader :image, ImageUploader
end
