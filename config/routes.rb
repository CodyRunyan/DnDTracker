Rails.application.routes.draw do
  resources :player_characters
  root 'event#index'

  resources :monsters
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
