# frozen_string_literal: true

Rails.application.routes.draw do
  resources :ams_user, only: %i[index show]
  resources :json_api_user, only: %i[index show]
end
