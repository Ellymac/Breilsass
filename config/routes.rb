Rails.application.routes.draw do
  get 'news/new'

  root 'static_pages#home'

  get 'about' => 'static_pages#about'
  get 'contacts' => 'contacts#new'

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

  get '/lieux/alsace' => 'other_pages#placesAlsace'
  get '/lieux/bretagne' => 'other_pages#placesBretagne'

  get '/allcomments', to: 'comments#show'
  post '/allcomments', to: 'comments#show'
  post '/comment', to: 'comments#new'
  post '/comments', to: 'comments#create'

  get '/survie' => 'other_pages#show'
  get '/newarticle' => 'other_pages#new'
  post '/newarticle', to: 'other_pages#create'

  put '/users' => 'users#up_admin'
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  resources :contacts,            only: [:new, :create]

  #get 'index' => 'other_pages#index'
end
