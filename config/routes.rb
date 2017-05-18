Rails.application.routes.draw do
  get 'sessions/new'

  root 'static_pages#home'

  get 'static_pages/help'

  resources :users
  get 'users/new'
  get  '/signup',  to: 'users#new'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
