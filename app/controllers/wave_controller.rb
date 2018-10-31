class WaveController < ApplicationController
  def create
    @wave = Wave.new(params[:wave].permit(:board_id, :status, :comment))
    @wave.save
    redirect_to boards_show_path(params[:wave]['board_id'])
  end
end
