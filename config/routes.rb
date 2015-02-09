Rails.application.routes.draw do
  root :to => 'listeners#index'
  resources :listeners
  resources :podcasts
  resources :episodes

  get '/search' => 'podcasts#search', :as => "search_podcasts"
  post '/podcasts/:id/subscribe' => 'podcasts#subscribe', :as => "podcast_subscribe"

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

end
