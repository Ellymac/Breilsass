Rails.application.routes.draw do
  get 'news/new'

  root 'static_pages#home'

  get 'contact' => 'static_pages#contact'
  get 'about' => 'static_pages#about'

  resources :users
  get 'users/new'
  get  '/signin' => 'users#new'

  get '/actu/alsace' => 'news#showAlsace'
  get '/actu/bretagne' => 'news#showBretagne'
  
  get '/bonsplans/alsace' => 'other_pages#deals'
  get '/bonsplans/bretagne' => 'other_pages#deals'

  get '/lieux/alsace' => 'other_pages#places'
  get '/lieux/bretagne' => 'other_pages#places'

  get '/survie' => 'other_pages#survival'

  #get 'index' => 'other_pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
