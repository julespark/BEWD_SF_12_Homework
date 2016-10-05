MoviesApp::Application.routes.draw do
  devise_for :users
  get "actor/show"
  get "genre/show"
  root "movies#index"
  resources :movies, :genres, :actors

  # Got this from Katy's solutions, would not have figured this out otherwise.
  get 'users/show_movies' => 'users#show_movies', as: :show_user_movies
  get 'users/add_movie/:id' => 'users#add_movie', as: :add_movie
  get 'users/remove_movie/:id' => 'users#remove_movie', as: :remove_movie

end
