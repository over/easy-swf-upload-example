ActionController::Routing::Routes.draw do |map|
  map.root :controller => "photos"
  map.upload_photo "photos/create", :controller => "photos", :action => "create"
end
