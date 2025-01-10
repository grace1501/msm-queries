class DirectorsController < ApplicationController
  def index
    render({ :template => "director_templates/list"})
  end

  def show
    the_id = params.fetch("the_id")
    @the_director = Director.all.where({ :id => the_id}).at(0)
    @the_filmography = Movie.all.where({ :director_id => the_id})

    render({ :template => "director_templates/details" })
  end
end
