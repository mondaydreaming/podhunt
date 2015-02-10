Listener.destroy_all
Podcast.destroy_all
Episode.destroy_all
Message.destroy_all

l1 = Listener.create(:firstname => 'Michael', :lastname => 'Joyce', :username =>'Bambi', :password => 'chicken', :password_confirmation => 'chicken', :dob => '1988-01-01', :country => 'Australia', :email => 'michael@ga.com.au', :interests => 'food, sports', :image => 'http://wundergroundmusic.com/wp-content/uploads/2014/10/Smiling-Man-4.jpg')
l2 = Listener.create(:firstname => 'Katherine', :lastname => 'Hurley', :username =>'Keepfishing', :password => 'chicken', :password_confirmation => 'chicken', :dob => '1990-01-01', :country => 'Australia', :email => 'katherine@ga.com.au', :interests => 'food, tv shows', :image => 'http://goo.gl/vUiu7c')
l3 = Listener.create(:firstname => 'Bishin', :lastname => 'Ho', :username =>'bisho', :password => 'chicken', :password_confirmation => 'chicken', :dob => '1985-01-01', :country => 'Australia', :email => 'bishin@ga.com.au', :interests => 'food, technology', :image => 'http://goo.gl/v3b6Nv')

p1 = Podcast.create(:title => 'The Moth', :author => 'PRX', :description => 'Moth shows are renowned for the great range of human experience they showcase. Each show starts with a theme, and the storytellers explore it, often in unexpected ways. Since each story is true and every voice authentic, the shows dance between documentary and theater, creating a unique, intimate, and often enlightening experience for the audience.', :categories => 'Storytelling', :feed_url => 'http://feeds.themoth.org/themothpodcast')
p2 = Podcast.create(:title => 'This American Life', :author => 'Chicago Public Media & Ira Glass', :description => 'This American Life is a weekly public radio show, heard by 2.2 million people on more than 500 stations. Another 1.5 million people download the weekly podcast. It is hosted by Ira Glass, produced by Chicago Public Media, delivered to stations by PRX The Public Radio Exchange, and has won all of the major broadcasting awards.', :categories => 'Personal Journals',  :feed_url => 'http://feeds.thisamericanlife.org/talpodcast' )
p3 = Podcast.create(:title => 'Serial', :author => 'TAL & WBEZ $ Serial', :description =>"Serial is a podcast from the creators of This American Life, and is hosted by Sarah Koenig. Serial tells one story - a true story - over the course of an entire season. Each season, we'll follow a plot and characters wherever they take us. And we won’t know what happens at the end until we get there, not long before you get there with us. Each week we bring you the next chapter in the story, so it's important to listen to the episodes in order, starting with Episode 1. ", :categories => 'Investigative Journalism', :feed_url => 'http://feeds.serialpodcast.org/serialpodcast')

e1 = Episode.create(:title => 'Moth one', :published=> '2014-01-01', :url => 'http://feeds.themoth.org/themothpodcast', :topics => 'topic1', :summary => 'This is a summary of the moth episode one', :duration => '7:00')
e2 = Episode.create(:title => 'This American Life one', :published=> '2014-01-02', :url => 'http://feeds.thisamericanlife.org/talpodcast', :topics => 'topic1', :summary => 'This is a summary of this American Life episode one', :duration => '58:00')
e3 = Episode.create(:title => 'Serial one', :published=> '2014-01-05', :url => 'http://feeds.serialpodcast.org/serialpodcast', :topics => 'topic1', :summary => 'This is a summary of Serial episode one', :duration => '40:00')

m1 = Message.create(:comment => "This is my favourite podcast", :listener_id => l1.id)
m2 = Message.create(:comment => "I hate this podcast and evey episode in it" , :listener_id => l2.id)
m3 = Message.create(:comment => "comment paragraph blah blah blah " , :listener_id => l3.id)

#associate podcasts and listeners
p1.listeners << l1
p2.listeners << l2
p3.listeners << l3

#associate episodes and podcasts
p1.episodes << e1
p2.episodes << e2
p3.episodes << e3

# associate messages and podcasts
p1.messages << m1
p2.messages << m2
p3.messages << m3

