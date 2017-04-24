Rails.application.routes.draw do
  root to: 'pages#home'

  resources :authors, except: [:destroy]
  resources :posts, except: [:destroy]

  get 'posts/drafts' => 'posts#drafts'
end
