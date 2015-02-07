Rails.application.routes.draw do
  root :to => 'listeners#home'
  resources :listeners
  resources :podcasts
  resources :episodes
end
