Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pages#home'  
  resources 'products', :only => [:index] 
  resources 'users'

  resources 'login', :only => [:show_login, :show_signup]

end
