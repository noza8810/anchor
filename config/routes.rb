Rails.application.routes.draw do
  root 'alchols#index'

  resources :alchols 
  # get 'search' => 'posts#search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
