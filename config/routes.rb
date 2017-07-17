Rails.application.routes.draw do
  root 'static_pages#home'

  get '/help', to: 'static_pages#help', as: 'help'

  get 'about', to: 'static_pages#about', as: 'about'


  get 'static_pages/about'

  root 'static_pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
