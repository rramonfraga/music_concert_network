Rails.application.routes.draw do
  resources :concerts, only: [:index, :show, :new, :create] do
    resources :comments, only: [:create]
  end

end
