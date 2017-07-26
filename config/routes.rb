Rails.application.routes.draw do
  resources :offs
  get 'sessions/new'

  resources :events
  resources :users
  root 'static_pages#home'
  get '/signup', to: 'users#new', as: 'signup'

  get '/help', to: 'static_pages#help', as: 'help'

  get 'about', to: 'static_pages#about', as: 'about'


  get 'static_pages/about'

  root 'static_pages#home'
  get   '/login', to: 'sessions#new'
  post  '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
