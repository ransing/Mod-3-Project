Rails.application.routes.draw do
  resources :stops
  # resources :trains
  resources :stations
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


resources :trains do
  resources :stops  do
  resources :stations
  end 
end 

end
