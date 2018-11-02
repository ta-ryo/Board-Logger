class BoardsController < ApplicationController

  def index
    @boards = Board.all
    @newBoard = Board.new
  end

  def show
    @board = Board.find(params[:id])
    @wave = Wave.where(board_id: params[:id])
    @newWave = Wave.new(:board_id => params[:id])

    @manner = Manner.where(board_id: params[:id])
    @newManner = Manner.new(:board_id => params[:id])

    @mood = Mood.where(board_id: params[:id])
    @newMood = Mood.new(:board_id => params[:id])

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
  def createManner
    @manner = Manner.new(params[:manner].permit(:board_id, :entry))
    @manner.save
    redirect_to boards_show_path(params[:manner]['board_id'])
  end
end
