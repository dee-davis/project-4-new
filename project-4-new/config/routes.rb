Rails.application.routes.draw do
  resources :careers
  devise_for :users
  resources :careers do
    collection do
      get :search
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# devise_for :users

get '/users' => "users#show", as: "user"

get '/admins' => "admins#show", as: "admin"

# get "users/sign_up" => "users#new"

root to: "home#index"

end
