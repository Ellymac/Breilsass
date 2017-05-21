Rails.application.routes.draw do
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

  get '/actu/alsace' => 'news#articles'
  get '/actu/bretagne' => 'news#articles'
  get '/actu/67' => 'news#articles'
  get '/actu/68' => 'news#articles'
  get '/actu/22' => 'news#articles'
  get '/actu/29' => 'news#articles'
  get '/actu/35' => 'news#articles'
  get '/actu/56' => 'news#articles'

  get '/bonsplans/alsace' => 'other_pages#deals'
  get '/bonsplans/bretagne' => 'other_pages#deals'

  get '/lieux/alsace' => 'other_pages#places'
  get '/lieux/bretagne' => 'other_pages#places'

  get '/survie' => 'other_pages#survival'

  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  resources :contacts,            only: [:new, :create]

  #get 'index' => 'other_pages#index'
end
