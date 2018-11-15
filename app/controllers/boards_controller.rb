class BoardsController < ApplicationController
  before_action :correct_user

  def index
    @user = User.find(params[:id])
    @boards = Board.where(user_id: params[:id])
    @newBoard = Board.new(user_id: params[:id])
  end

  def show
    @board = Board.find(params[:id])
    @wave = Wave.where(board_id: params[:id])
    @newWave = Wave.new(:board_id => params[:id])

    @manner = Manner.where(board_id: params[:id])
    @newManner = Manner.new(:board_id => params[:id])

    @mood = Mood.where(board_id: params[:id]).last
    @newMood = Mood.new(:board_id =>params[:id])

    @map = Map.where(board_id: params[:id])
    @newMap = Map.new(:board_id => params[:id])

    @photo = Photo.all
   
    @hash = Gmaps4rails.build_markers(@map) do |place, marker|
      marker.lat place.latitude
      marker.lng place.longitude
      marker.infowindow place.address
    end
  end

  def create
    @board = Board.new(params[:board].permit(:location, :user_id))
    if @board.save
      redirect_to board_path(@board.user_id)
    else
      p @board.errors.full_messages
      redirect_to board_path(@board.user_id)
    end
  end
  def createManner
    @manner = Manner.new(params[:manner].permit(:board_id, :entry))
    @manner.save
    redirect_to boards_show_path(params[:manner]['board_id'])
  end

  # 正しいユーザーかどうか確認
  def correct_user
    @user = User.find(params[:id])
    if logged_in?
      redirect_to(board_path(current_user.id)) unless current_user?(@user)
    else
      redirect_to login_path
    end
  end

end
