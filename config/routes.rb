Rails.application.routes.draw do
  
  resources :concerts, only: [:show, :new, :create]

end
