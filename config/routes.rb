Refinery::Core::Engine.routes.draw do
  post '/redactor_images/' => 'redactor/images#create'
  post '/redactor_resources/' => 'redactor/resources#create'
end
