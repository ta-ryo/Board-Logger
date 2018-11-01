class BoardsController < ApplicationController

  def index
    @boards = Board.all
    @newBoard = Board.new
  end

  def show
    @board = Board.find(params[:id])
    @wave = Wave.where(board_id: params[:id])
    @newWave = Wave.new(:board_id => params[:id])

    @map = Map.where(board_id: params[:id])
    @newMap = Map.new(:board_id => params[:id])
    
    @hash = Gmaps4rails.build_markers(@map) do |place, marker|
      marker.lat place.latitude
      marker.lng place.longitude
      marker.infowindow place.address
    end
  end

  def create
    @board = Board.new(params[:board].permit(:location))
    @board.save
    redirect_to root_path
  end
end
