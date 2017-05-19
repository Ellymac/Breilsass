Rails.application.routes.draw do
  get 'sessions/new'

  root 'static_pages#home'

  get 'contact' => 'static_pages#contact'
  get 'about' => 'static_pages#about'

  resources :users
  get 'users/new'
  get  '/signin' => 'users#new'

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

  #get 'index' => 'other_pages#index'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
