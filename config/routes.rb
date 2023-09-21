Rails.application.routes.draw do
  resources :crafts
  resources :collaborations
  resources :posts
  resources :projects
  root to: "projects#index"
end
