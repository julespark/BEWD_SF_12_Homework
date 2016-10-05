class UsersController < ApplicationController
  def show_movies
    @movies = current_user.movies
  end

  def add_movie
    movie = Movie.find(params[:id])
    if !current_user.movies.include?(movie)
      current_user.movies << movie
      current_user.save()
    end
    redirect_to root_path, alert: "#{movie.title} has been added to your list."
  end

  def remove_movie
    movie = Movie.find(params[:id])
    if current_user.movies.include?(movie)
      current_user.movies.delete(movie)
      current_user.save()
    end
    redirect_to root_path, alert: "#{movie.title} has been removed from your list."
  end
end
