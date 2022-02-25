Rails.application.routes.draw do
  get 'products/show_arrivals'
  get 'products/show_features'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pages#home'  
  resources 'products', :only => [:show_arrivals, :show_features] 
  resources 'users'

  resources 'login', :only => [:show_login, :show_signup]

end
