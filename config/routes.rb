# frozen_string_literal: true

Rails.application.routes.draw do
  root "users#index"
  resources :users
  resources :costs
  resources :subjects
  resources :details
  resource :session, only: %i[create destroy]
  resource :account
end
