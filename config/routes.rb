Rails.application.routes.draw do
  root 'static_pages#home'

  get 'static_pages/help'

  resources :users
  get 'users/new'
  get  '/signup',  to: 'users#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
