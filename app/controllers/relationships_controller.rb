class RelationshipsController < ApplicationController

  def create
    @listener = Listener.find(params[:followed_id])
    @current_listener.follow(@listener)
    redirect_to listener_path(@listener)
  end

  def destroy
    @listener = Relationship.find(params[:id]).followed
    @current_listener.unfollow(@listener)
    redirect_to listener_path(@listener)
  end

  private

end