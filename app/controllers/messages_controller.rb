class MessagesController < ApplicationController
  def index
    @podcast = Podcast.find params[:podcast_id]

  end

  def create
    @podcast = Podcast.find params[:podcast_id]

    @message = @podcast.messages.new(:comment => params[:comment], :listener_id => @current_listener.id, :podcast_id => params[:podcast_id])
    if @message.save
      redirect_to(podcast_messages_path(@podcast))
    else
      render :index

    end

  end

  def new
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
    message = Message.find params[:id]
    message.destroy
    redirect_to(podcast_messages_path)
  end

  def newsfeed
    if @current_listener
      @messages = Message.where(:listener_id => @current_listener.following_ids)
    else
      @messages = Message.all
    end
  end
end
