Refinery::Core::Engine.routes.draw do
  post '/redactor_images/' => 'redactor/images#create'
end
