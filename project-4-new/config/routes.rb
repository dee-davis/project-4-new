Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# devise_for :users

get '/users' => "users#show", as: "user"

get '/admins' => "admins#show", as: "admin"

resources :careers

root to: "home#index"

end
