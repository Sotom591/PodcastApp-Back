Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create, :update, :show]
      post '/login', to: "auth#create"
      post '/new', to: "users#create"
      get '/home', to: "users#profile"
      resources :podcasts, only: [:index, :create, :show, :update]
      resources :episodes, only: [:index, :create, :show]
      resources :podcast_posts, only: [:index, :create, :show, :update, :destroy]
      resources :episode_posts, only: [:index, :create, :show, :update, :destroy]
      resources :friendships, only: [:index, :create, :update, :destroy]
      resources :genres, only: [:index, :create, :show]
      resources :subscriptions, only: [:index, :create, :show, :update, :destroy]
      resources :user_genres, only: [:index, :create, :show, :update, :destroy]
    end
  end
end
