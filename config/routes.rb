Rails.application.routes.draw do
  resources :offers, only: %i[index]
end
