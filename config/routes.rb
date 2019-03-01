Rails.application.routes.draw do
  resources :heroines, only: [:index, :show, :new, :create]
  resources :powers, only: [:index, :show]
end
