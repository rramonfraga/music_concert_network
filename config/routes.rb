Rails.application.routes.draw do

  get '/price_lower' => 'concerts#price_lower'
  post '/price_lower' => 'concerts#price_lower'
  get '/popular_concerts' => 'concerts#popular_concerts'

  resources :concerts, only: [:index, :show, :new, :create] do
    resources :comments, only: [:create]
  end

end
