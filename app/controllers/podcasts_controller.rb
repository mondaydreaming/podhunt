class PodcastsController < ApplicationController
  def index
    @podcasts = Podcast.all
  end

  def create
    urls = params[:feed_url]
    @podcast = Feedjira::Feed.fetch_and_parse urls

    Podcast.create(:title => @podcast.title , :feed_url => @podcast.feed_url, :author => @podcast.entries[0].author,
      :description => @podcast.description,
      :last_modified => @podcast.last_modified,
      :url => @podcast.url)

    redirect_to(podcasts_path)
  end

  def new
    urls = params[:feed_url]
    @podcast = Feedjira::Feed.fetch_and_parse urls
  end

  def show
# Search on feedjira
    @podcast = 


    # podcast = Podcast.create 

    # @podcast.title
    # @podcast.url
    # @podcast.entries

    # @entry = podcast.entries.first
    # @entry.title
    # @entry.url
  end

  # def edit
  # end

  # def update
  # end

  def destroy
    podcast = Podcast.find params[:id]
    podcast.destroy
    redirect_to(podcasts_path)
  end

  private

  def podcast_params
    params.require(:podcast).permit(:title, :search, :feed_url, :author, :description, :categories)
  end



end
