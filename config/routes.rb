Sesuso::Application.routes.draw do
  resources :survey_value_sets

  resources :survey_data_sets

  resources :survey_locations

  resources :survey_areas

  resources :surveys

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"

  match 'home/leereVersprechen' => 'Home#leereVersprechen', :as => :dummy
  match 'back_end/prepare_confirmation_form' => 'back_end#prepare_confirmation_form', :as => :prepare_confirmation_form

  devise_for :users
  resources :users do
    put 'sendConfirmationFormPDFToBrowser', :on => :member
  end
end

