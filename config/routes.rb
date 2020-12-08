Rails.application.routes.draw do
  devise_for :users
  root to: "gosyuins#index"
  resources :gosyuins do
    resources :comments, only: [:index, :create]
  end
end
