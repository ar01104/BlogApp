Rails.application.routes.draw do
  devise_for :users
  get 'contact', to: 'home#contact'
  get 'home', to: 'home#homepage'
  root 'home#homepage'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
