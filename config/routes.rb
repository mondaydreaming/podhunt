Rails.application.routes.draw do
  root :to => 'listeners#index'
  resources :listeners
  resources :podcasts
  resources :episodes

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

end
