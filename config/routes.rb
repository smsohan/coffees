Rails.application.routes.draw do
  resources :brewed_coffees
  root 'brewed_coffees#index'
end
