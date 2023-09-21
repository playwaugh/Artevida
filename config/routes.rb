Rails.application.routes.draw do
  resources :posts
  resources :projects
  root to: "projects#index"
end
