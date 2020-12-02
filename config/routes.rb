Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :parks, only: [:index]
  get '/park_search', to: "parks#search"

end
