Rails.application.routes.draw do

  root 'home#show'

  get '/auth/:provider/callback', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get 'dashboard', to: 'dashboard#show'
  post 'dashboard', to: 'dashboard#update'

  get 'feed', to: 'feed#show'
  post 'feed', to: 'feed#update'


end
