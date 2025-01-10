class MoviesController < ApplicationController
  def index
    @all_movies = Movie.all
    render({ :template => "movie_templates/list" })
  end

  def show
    render({ :template => "movie_templates/details"})
  end
end
