class DirectorsController < ApplicationController

  def alldirectors 

    render({ :template => "director_templates/alldirectors" })
  
  end

  def allmovies
    render({ :template => "director_templates/allmovies" })
  end

  def allactors
    render({ :template => "director_templates/allactors" })
  end

  def youngest
    @the_youngest_director = Director.where.not({ :dob => nil }).order({ :dob => :asc }).at(0)
    render({ :template => "director_templates/youngest" })
  end

  def eldest
    @the_eldest_director = Director.where.not({ :dob => nil }).order({ :dob => :desc }).at(0)
    render({ :template => "director_templates/eldest" })
  end

  def show
    the_id = params.fetch("the_id")
    @the_director = Director.where({ :id => the_id }).at(0)
    render({ :template => "director_templates/show" })
  end

  def show_actor
    the_id = params.fetch("the_id")
    @the_actor = Actor.where({ :id => the_id }).at(0)
    render({ :template => "director_templates/show_actor" })
  end

  def show_movie
    the_id = params.fetch("the_id")
    @the_movie = Movie.where({ :id => the_id }).at(0)
    render({ :template => "director_templates/show_movie" })
  end
end
