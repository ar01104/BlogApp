Rails.application.routes.draw do
  resources :profiles
  devise_for :users
  get 'contact', to: 'home#contact'
  get 'home', to: 'home#homepage'
  post 'request_contact', to: 'home#request_contact'
  root 'home#homepage'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
