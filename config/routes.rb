Rails.application.routes.draw do

  devise_for :users
  root to: "articles#index"

  get '/home/index' => 'articles#index'
  get 'terms' => 'pages#terms'
  get 'about' => 'pages#about'

  resource :contacts, only: [:new, :create], path_names: {:new => ''}
  resources :articles do
    resources :comments, only: [:create]
  end

end
