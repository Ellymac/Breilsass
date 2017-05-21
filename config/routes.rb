Rails.application.routes.draw do
  get 'news/new'

  root 'static_pages#home'

  get 'contact' => 'static_pages#contact'
  get 'about' => 'static_pages#about'

  get 'users/new'
  get  '/signup' => 'users#new'
  get 'sessions/new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get 'password_resets/new'
  get 'password_resets/edit'

  get '/actu/alsace' => 'news#showAlsace'
  get '/actu/bretagne' => 'news#showBretagne'
  
  get '/bonsplans/alsace' => 'other_pages#deals'
  get '/bonsplans/bretagne' => 'other_pages#deals'

  get '/lieux/alsace' => 'other_pages#places'
  get '/lieux/bretagne' => 'other_pages#places'

  get '/survie' => 'other_pages#survival'

  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]

  #get 'index' => 'other_pages#index'
end
