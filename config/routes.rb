Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
# get("/X", {controller: => "X", :action => "X"})
# get("/Y", {controller: => "Y", :action => "Y"})

resources "entries"
resource "places"
  # Defines the root path route ("/")
  # get("/", { :controller => "articles", :action => "index" })
end
