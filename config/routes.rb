Rails.application.routes.draw do
  resources :root, only: [:index]

  root to: 'root#index'
end
