Rails.application.routes.draw do

  namespace :admin do
    get 'preferences/index'
  end

  resources :artists do
    resources :songs, only: [:index, :show]
  end
  resources :songs

  namespace :admin do
    resources :preferences, only: [:index]
  end

end