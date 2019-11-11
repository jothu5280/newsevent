Rails.application.routes.draw do
  # get 'home/index'
  root 'home#index'

  # get 'home/topic'
  post "topic" => 'home#topic'

  post "search" => 'home#search'

  get 'searches/index'
  get 'searches/new'
  get 'searches/create'
  get 'searches/destroy'
  get 'searches/show'

  resources :searches, only: [:index, :new, :create, :destroy, :show]  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
