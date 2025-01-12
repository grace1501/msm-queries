class ActorsController < ApplicationController
  def index
    @all_actors = Actor.all
    render({ :template => "actor_templates/list" })
  end

  def show
    the_id = params.fetch("the_id")
    @the_actor = Actor.all.where({ :id => the_id }).at(0)
    render({ :template => "actor_templates/details"})
  end
end
