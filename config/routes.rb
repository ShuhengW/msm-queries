Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })
  get("/directors", { :controller => "directors", :action => "alldirectors" })
  get("/movies", { :controller => "directors", :action => "allmovies" })
  get("/directors/youngest", { :controller => "directors", :action => "youngest" })
  get("/directors/:the_id", { :controller => "directors", :action => "show" })

end
