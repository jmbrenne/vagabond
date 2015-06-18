Rails.application.routes.draw do
  

	root to: "welcome#index"

	get "/welcome", to: "welcome#index"

  
	resources :posts
  
	resources :users, except: [:new]
	# get "/users/new", to: "welcome#index", as: "new_user"
  
	resources :places
  
	post "/sessions", to: "sessions#create"

	get "/sessions", to: "sessions#destroy"

	get "/oauth/connect", to: "sessions#oauth_connect"
	get "/oauth/callback", to: "sessions#oauth_callback"
  
end

