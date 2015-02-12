class PodcastsController < ApplicationController
  def index
    @podcasts = @current_listener.podcasts.all
  end

  def search
    @podcasts = Podcast.all
  end

  def create
    currentlibrary =  Podcast.all

    if  currentlibrary.where(:feed_url => params[:feed_url])
        @podcast = Podcast.find_by(
        :feed_url => params[:feed_url])
    else    
      url = params[:feed_url]
      xml = Feedjira::Feed.fetch_raw url
      @jirapodcast = Feedjira::Feed.parse_with Feedjira::Parser::ITunesRSS, xml    

      @podcast = Podcast.create(
        :title => @jirapodcast.title, 
        :feed_url => params[:feed_url], 
        :author => @jirapodcast.entries[0].itunes_author,
        :description => @jirapodcast.description,
        :categories => @jirapodcast.itunes_categories,
        :image => @jirapodcast.itunes_image,
        :subtitle => @jirapodcast.itunes_subtitle,
        :language => @jirapodcast.language,
        :copyright => @jirapodcast.copyright,
        :url => @jirapodcast.url, 
        :entries => @jirapodcast.entries,
        :explicit => @jirapodcast.itunes_explicit)


      @jirapodcast.entries.each do |ep|
        @podcast.episodes.create(
          :title => ep.title,
          :published => ep.published,
          :url => ep.enclosure_url,
          :summary => ep.summary,
          :duration => ep.itunes_duration,
          :subtitle => ep.itunes_subtitle
          )
      end
    end
  end

  def subscribe
    podcast = Podcast.find params[:id]
    @current_listener.podcasts << podcast
    redirect_to podcast
  end

  def show
    @podcast = Podcast.find params[:id]
  end

  def destroy
    podcast = Podcast.find params[:id]
    podcast.destroy
    redirect_to(podcasts_path)
  end

  private
  def podcast_params
    params.require(:podcast).permit(:title, :feed_url, :author, :description, :categories, :image, :url, :entries, :copyright, :subtitles, :language, :explicit)
  end

end
