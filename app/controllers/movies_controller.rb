class MoviesController < ApplicationController
  def index
    @all_movies = Movie.all
    render({ :template => "movie_templates/list" })
  end

  def show
    the_id = params.fetch("the_id")
    @the_movie = Movie.all.where({ :id => the_id }).at(0)
    render({ :template => "movie_templates/details"})
  end
end
