class DirectorsController < ApplicationController
  def index
    render({ :template => "director_templates/list"})
  end

  def show
    the_id = params.fetch("the_id")
    @the_director = Director.all.where({ :id => the_id}).at(0)

    render({ :template => "director_templates/details" })
  end
end
