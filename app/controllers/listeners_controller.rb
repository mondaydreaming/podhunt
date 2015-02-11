class ListenersController < ApplicationController

  def following
    @title = "Following"
    @listener  = Listener.find(params[:id])
    @listeners = @listener.following
  end

  def followers
    @title = "Followers"
    @listener  = Listener.find(params[:id])
    @listeners = @listener.followers
  end

  def index
    @listener = Listener.all
  end

  def create
    @listener = Listener.create listener_params
    if @listener.save
      session[:listener_id] = @listener.id
      redirect_to root_path
    else
      render :new
    end
  end

  def new
    @listener = Listener.new
  end

  def edit
    @listener = @current_listener
  end

  def search
    redirect_to listeners_path
  end

  def show
    @listener = Listener.find params[:id]
  end

  def update
    listener = @current_listener
    listener.update listener_params
    redirect_to listener
  end

  def destroy
    listener = @current_listener
    listener.destroy
    redirect_to listeners_path
  end

  private

  def listener_params
    params.require(:listener).permit(:firstname, :lastname, :username, :password, :password_confirmation, :dob, :country, :email, :interests, :image, :remote_image_url)
  end

end
