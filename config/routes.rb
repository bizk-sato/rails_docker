# frozen_string_literal: true

Rails.application.routes.draw do
  root "users#index"
  resources :users
  resources :costs, except: [:show]
  resources :subjects, except: [:show]
  resources :details, except: [:show]
  resource :session, only: %i[create destroy]
  resource :account
end
