Rails.application.routes.draw do
  root 'personas#index'
  # get '/votos', to: 'personas#votos'
  # put '/estadistica', to: 'personas#estadisitica'
  resources :personas
end
