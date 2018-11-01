class GmapController < ApplicationController
  def create
    @map = Map.new(params[:map].permit(:board_id, :address, :latitude, :longitude))
    @map.save
    redirect_to boards_show_path(params[:map]['board_id'])
  end
end
