Rails.application.routes.draw do
  root to: 'pages#home'

  resources :authors, except: [:destroy]
end
