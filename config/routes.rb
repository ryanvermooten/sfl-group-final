Rails.application.routes.draw do
 

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :gardener_statuses

  resources :phone_rentals

  resources :extras

  resources :navigation

  resources :troubleshoots

  resources :phones

  resources :groups

  resources :gardeners

  resources :homepage

  resources :training_evaluations do
    resources :training_evaluation_trainers
  end
  
  devise_for :users

devise_scope :user do
  authenticated :user do
    root 'homepage#index', as: :authenticated_root
  end

  unauthenticated do
    root 'devise/sessions#new', as: :unauthenticated_root
  end
end
  resources :users
  resources :groups do
    resources :attendance_registers
    resources :gardeners do
      resources :gardens
      resources :living_arrangements
      resources :sfls
      resources :educations
      resources :employments
      resources :grants
      resources :abilities
      resources :healths
      resources :general_statements
      resources :experiences
      resources :expenditures
      resources :support_visits
      resources :follow_up_visit_gardens
      resources :follow_up_visit_eatings
      resources :follow_up_visit_sellings
      resources :follow_up_visit_impressions
    end
  end
  resources :questionnaires

resources :gardener_questionnaires do
  resources :answers
end
   resources :attendance_registers
   resources :admin do
    resources :metrics
  end
end


  #get '/dropbox/authorize', to: 'dropbox#authorize', :as => :dropbox_auth
 # get '/dropbox/callback', to: 'dropbox#callback', :as =>  :dropbox_callback

 #match '/dropbox/authorize'   => 'dropbox#authorize' , :method => :get , :as => :dropbox_auth
#match '/dropbox/callback' => 'dropbox#callback' , :method => :get , :as =>  :dropbox_callback