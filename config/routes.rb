Rails.application.routes.draw do
  # get '/votos', to: 'personas#votos'
  # put '/estadistica', to: 'personas#estadisitica'
  resources :personas
end
