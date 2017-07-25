Rails.application.routes.draw do
  root 'users#index'
  resources :users do
    resources :micro_posts
  end
end
