Rails.application.routes.draw do
  devise_for :users
  resources :certificates
  resources :load_balancers
  resources :architectures
  resources :servers
  resources :forms

  resources :firewalls do
    collection do
      post 'firewalls/' => 'firewalls#firewall_create'
    end
  end

  resources :deployments do
    collection do
      post  'deployments/' => 'deployments#deployment_create'
    end
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'forms#new'

end
