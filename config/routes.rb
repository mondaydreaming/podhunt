Rails.application.routes.draw do
  resources :users

  root :to => 'messages#newsfeed'
  resources :listeners do
    member do
      get :following, :followers
    end
  end

  get '/search/listeners' => 'listeners#search', :as => "search_listeners"

  resources :podcasts do
    resources :messages #, :except => :create
  end

  # post '/podcasts/:podcast_id/messages' => 'messages#create', :as => "create_message"

  get '/search/podcasts' => 'podcasts#search', :as => "search_podcasts"
  post '/podcasts/:id/subscribe' => 'podcasts#subscribe', :as => "podcast_subscribe"

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
  resources :relationships,       only: [:create, :destroy]

end
