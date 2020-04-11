Rails.application.routes.draw do
get "/" => "homes#top"
get "/homes/help" => "homes#help"
resources :sessions
resources :users, only: [:new, :create, :show]
resources :blogs do
collection do
post :confirm
end
end
end
