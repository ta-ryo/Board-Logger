class PhotosController < ApplicationController

  def create
    @photo = Photo.new(photo_params)
    @photo.image = Base64.strict_encode64(@photo.image)
    @photo.save

    redirect_to boards_show_path(@photo.manner.board.id)
  end

  private

  def photo_params
    params.require(:photo).permit(:image, :manner_id)
  end

end
