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

  def youngest
    @the_youngest = Director.all.order({:dob => "desc"}).where.not({ :dob => nil}).at(0)
    render({ :template => "director_templates/youngest"})
  end

  def eldest
    @the_eldest = Director.all.order(:dob).where.not({ :dob => nil }).at(0)
    render({ :template => "director_templates/eldest"})
  end

end
