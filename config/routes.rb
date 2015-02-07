Rails.application.routes.draw do
  get 'episodes/index'

  get 'episodes/create'

  get 'episodes/new'

  get 'episodes/edit'

  get 'episodes/show'

  get 'episodes/update'

  get 'episodes/destroy'

  get 'podcasts/index'

  get 'podcasts/reate'

  get 'podcasts/new'

  get 'podcasts/edit'

  get 'podcasts/show'

  get 'podcasts/update'

  get 'podcasts/destroy'

  get 'listeners/index'

  get 'listeners/create'

  get 'listeners/new'

  get 'listeners/edit'

  get 'listeners/show'

  get 'listeners/update'

  get 'listeners/destroy'

  root :to => 'listeners#home'
  resources :listeners
  resources :podcasts
  resources :episodes
end
