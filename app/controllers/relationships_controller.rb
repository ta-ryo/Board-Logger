class RelationshipsController < ApplicationController

  def create
    user = User.find(params[:followed_id])
    current_user.follow(user)
    middle = Middle.new(relationship_id: Relationship.last.id)
    middle.board_id = params[:board_id]
    middle.save
    redirect_to board_path(current_user.id)
  end

  def destroy
    user = Relationship.find(params[:id]).followed
    current_user.unfollow(user)
    redirect_to board_path(current_user.id)
  end
end
