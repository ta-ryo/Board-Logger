class WaveController < ApplicationController
  def create
    @wave = Wave.new(params[:wave].permit(:board_id, :status, :comment, :windway))
    @wave.save
    redirect_to boards_show_path(params[:wave]['board_id'])
  end

  def createmood
    @mood = Mood.new(params[:mood].permit(:board_id, :mood))
    @mood.save
    redirect_to boards_show_path(params[:mood]['board_id'])
  end
end
