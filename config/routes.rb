Rails.application.routes.draw do
  resources :phone_rentals

  resources :extras

  resources :phones

  resources :groups

  root to: 'visitors#index'
  devise_for :users
  resources :users
  resources :groups do
    resources :gardeners do
      resources :gardens
      resources :living_arrangements
      resources :sfls
      resources :educations
      resources :employments
      resources :grants
      resources :abilities
      resources :expenses
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
   resources :attendance_registers
  end
end

  #get '/dropbox/authorize', to: 'dropbox#authorize', :as => :dropbox_auth
 # get '/dropbox/callback', to: 'dropbox#callback', :as =>  :dropbox_callback

 #match '/dropbox/authorize'   => 'dropbox#authorize' , :method => :get , :as => :dropbox_auth
#match '/dropbox/callback' => 'dropbox#callback' , :method => :get , :as =>  :dropbox_callback