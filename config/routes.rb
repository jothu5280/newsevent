Rails.application.routes.draw do
  # get 'home/index'
  root 'home#index'

  get 'home/topic'
  post "topic" => 'home#topic'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
