Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })
  get("/directors", { :controller => "directors", :action => "alldirectors" })
  get("/movies", { :controller => "directors", :action => "allmovies" })
  get("/actors", { :controller => "directors", :action => "allactors" })
  get("/directors/youngest", { :controller => "directors", :action => "youngest" })
  get("/directors/eldest", { :controller => "directors", :action => "eldest" })
  get("/directors/:the_id", { :controller => "directors", :action => "show" })
  get("/actors/:actors_id", { :controller => "directors", :action => "show_actor" })
  get("/movies/:movies_id", { :controller => "directors", :action => "show_movie" })
end
