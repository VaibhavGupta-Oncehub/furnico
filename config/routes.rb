Rails.application.routes.draw do

  root 'pages#home'  
  resources :users
  get 'login/show_signup', to: 'users#new'
  get 'login/show_login'

  get 'products/show_arrivals'
  get 'products/show_features'

  

end
