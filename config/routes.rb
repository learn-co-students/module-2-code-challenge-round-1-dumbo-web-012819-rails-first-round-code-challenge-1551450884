Rails.application.routes.draw do
  resources :powers, except: [:destroy]
  resources :heroines, except: [:destroy]

  # get '/search/:id', to: 'heroines#search', as: "search"

end
