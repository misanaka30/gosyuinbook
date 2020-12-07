Rails.application.routes.draw do
  devise_for :users
  #get 'gosyuins/index'
  root to: "gosyuins#index"
  resources :gosyuins, only: [:new, :create, :index, :show]
end
