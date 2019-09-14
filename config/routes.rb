Rails.application.routes.draw do
  resources :users # 7つのアクションを作成してくれる
  resources :costs
  resource :session, only: [:create, :destroy]
  resource :account
end
