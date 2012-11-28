Sesuso::Application.routes.draw do
  resources :survey_data_sets

  resources :survey_locations

  resources :survey_areas

  resources :surveys

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end