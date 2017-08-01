Rails.application.routes.draw do

	root "users#index"
	get "/users" => "users#index", as: "users"
	get "/signup" => "users#new", as: "new_user"
	post "/users" => "users#create"
	get "/users/:id" => "users#show", as: "user"
]
	get "/login" => "sessions#new"
  post "/sessions" => "sessions#create"
  get "/logout" => "sessions#destroy"

  get "/events" => "events#index"
  get "/events/new" => "events#new", as: "new_event"
  post "/events" => "events#create"
  patch "/events/:id" => "events#update"
  delete "events/:id" => "event#destroy"
  
  get "/users/:user_id/events" => "event_users#index", as: "user_events"
  post "/events/:event_id/users" => "event_users#create", as: "event_users"



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
