DdTwo::Application.routes.draw do
  root to: 'users#index'
  resources :users

  match 'auth/:provider/callback', to: 'sessions#create'
  match 'auth/failure', to: redirect('/')
  match 'signout', to: 'sessions#destroy', as: 'signout'
end
