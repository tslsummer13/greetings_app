GreetingsApp::Application.routes.draw do
  root "sessions#new"

  get "/sessions/new" => "sessions#new", as: "new_session"
  post "/sessions" => "sessions#create", as: "sessions"
  delete "/sessions" => "sessions#destroy", as: "session"
end
