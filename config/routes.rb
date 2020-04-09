Rails.application.routes.draw do
  resources :offer, only: %i[index]
end
