Rails.application.routes.draw do
  resources :servers
  resources :forms
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'forms#new'



end
