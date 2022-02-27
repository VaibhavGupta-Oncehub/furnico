Rails.application.routes.draw do

  root 'pages#home'  
  resources :users, except: [:new]
  get 'login/show_signup', to: 'users#new'
  get 'login/show_login', to: 'sessions#new'
  post 'login/show_login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'


  get 'products/show_arrivals', to: 'products#show_arrivals'
  get 'products/show_features', to: 'products#show_features'

  

end
