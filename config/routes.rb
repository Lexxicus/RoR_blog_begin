Rails.application.routes.draw do
  get '/home/index' => 'home#index'

  resource :about, only: [:new], path_names: {:new => ''}
  resource :terms, only: [:new], path_names: {:new => ''}
  resource :contacts, only: [:new, :create], path_names: {:new => ''}
  resources :articles

end
