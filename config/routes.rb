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
  match 'back_end/prepare_affidavit' => 'back_end#prepare_affidavit', :as => :prepare_affidavit
  match 'back_end/receive_selected_survey_data_sets' => 'back_end#receive_selected_survey_data_sets', :as =>  :receive_selected_survey_data_sets

  devise_for :users

  resources :users do
    put 'send_affidavit_pdf_to_browser', :on => :member
    get 'send_affidavit_pdf_to_browser', :on => :member
  end


end

