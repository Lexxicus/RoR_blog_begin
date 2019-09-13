Rails.application.routes.draw do
  get '/home/index' => 'home#index'

  resource :contacts, only: [:new, :create], path_names: {:new => ''}
  resources :articles

end
