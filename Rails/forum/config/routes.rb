Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'groups#index' # 將localhost:3000/groups 設為首頁
  resources :groups do
    member do
      post :join
      post :quit
    end
    resources :posts
  end
end
