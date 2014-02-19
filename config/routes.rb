BrunchDeals::Application.routes.draw do

resources :deals, only: [:index, :show] do
  # resources :favorites
end

resources :users do
  resources :favorites
end

get "/show/deals", to: "deals#results"

  #resources :sessions, only: [:new, :create, :destroy]
  get "/login", to: "session#new"
  post "/session", to: "session#create"
  delete "/session", to: "session#destroy"

  root "welcome#index"
end
