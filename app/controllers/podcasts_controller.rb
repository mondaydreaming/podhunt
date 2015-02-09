class PodcastsController < ApplicationController
  def index
    @podcasts = @current_listener.podcasts.all
  end

  def search
  end

  def create
    urls = params[:feed_url]
    @jirapodcast = Feedjira::Feed.fetch_and_parse urls

    # what happens the second time you search
    @podcast = Podcast.create(:title => @jirapodcast.title, :feed_url => @jirapodcast.feed_url, :author => @jirapodcast.entries[0].author,
      :description => @jirapodcast.description,
      :last_modified => @jirapodcast.last_modified,
      :url => @jirapodcast.url, :entries => @jirapodcast.entries)

    @jirapodcast.entries.each do |ep|
      @podcast.episodes.create(
        :title => ep.title,
        :published => ep.published,
        :url => ep.image,
        :summary => ep.summary
        )
    end
  end

  def subscribe
    podcast = Podcast.find params[:id]
    @current_listener.podcasts << podcast
    redirect_to podcast
  end

  def new
    urls = params[:feed_url]
    @podcast = Feedjira::Feed.fetch_and_parse urls
  end

  def show
    @podcast = Podcast.find params[:id]
    # @episode = Episode.where(podcast_id = @podcast.id)
  end

  def destroy
    podcast = Podcast.find params[:id]
    podcast.destroy
    redirect_to(podcasts_path)
  end

  private
  def podcast_params
    params.require(:podcast).permit(:title, :published, :feed_url, :author, :description, :categories, :entries)
  end

end
