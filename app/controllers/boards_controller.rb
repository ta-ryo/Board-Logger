class BoardsController < ApplicationController

  def index
    @boards = Board.all
    @newBoard = Board.new
  end

  def show
    @board = Board.find(params[:id])
    @wave = Wave.where(board_id: params[:id])
    @newWave = Wave.new(:board_id => params[:id])
  end

  def create
    @board = Board.new(params[:board].permit(:location))
    @board.save
    redirect_to root_path
  end
end
