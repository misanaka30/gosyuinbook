Rails.application.routes.draw do
  get 'gosyuins/index'
  root to: "gosyuins#index"
end
