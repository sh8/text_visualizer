TextVisualizer::Application.routes.draw do
  resources :text_maps
  root :to => "text_maps#index" 
end
