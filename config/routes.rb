Rails.application.routes.draw do
  get 'login/show_signup'
  get 'login/show_login'
  get 'products/show_arrivals'
  get 'products/show_features'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pages#home'  
  resources :users

  get 'login/show_signup'
  get 'login/show_login'

  get 'products/show_arrivals'
  get 'products/show_features'

  

end
