Rails.application.routes.draw do

  root 'static_pages#home'
  get '/help', to:  'static_pages#help'
  get 'about' => 'static_pages#about'
  get 'contact' => 'static_pages#contact'

  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  resources :users


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
