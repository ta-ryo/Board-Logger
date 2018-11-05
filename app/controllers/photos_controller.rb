class PhotosController < ApplicationController

  def create
    @photo = Photo.new(photo_params)
    @photo.save

    redirect_to boards_show_path(@photo.manner.board.id)
  end

  private

  def photo_params
    params.require(:photo).permit(:image, :manner_id)
  end

end
