Rails.application.routes.draw do
  resources :boxscores
  resources :games
  resources :players
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
