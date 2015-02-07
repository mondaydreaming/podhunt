class ListenersController < ApplicationController
  def index
  end

  def create
    @listener = Listener.create listener_params
    if @listener.save
      redirect_to root_path
    else
      render :new
    end
  end

  def new
    @listener = Listener.new
  end

  def edit
    @listener = Listener.find params[:id]
  end

  def show
    @listener = Listener.find params[:id]
  end

  def update
    listener = Listener.find params[:id]
    listener.update listener_params
    redirect_to listener
  end

  def destroy
    listener = Listener.find params[:id]
    listener.destroy
    redirect_to listeners_path
  end

  private

  def listener_params
    params.require(:listener).permit(:firstname, :lastname, :username, :password, :password_confirmation, :dob, :country, :email, :interests, :image)
  end

end
