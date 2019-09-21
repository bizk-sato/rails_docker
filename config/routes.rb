# frozen_string_literal: true

Rails.application.routes.draw do
  resources :users # 7つのアクションを作成してくれる
  resources :costs
  resources :subjects
  resources :details
  resource :session, only: %i[create destroy]
  resource :account
end
