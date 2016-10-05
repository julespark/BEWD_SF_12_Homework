TwitterApp::Application.routes.draw do
  root "tweets#index"
  resources :users
end

