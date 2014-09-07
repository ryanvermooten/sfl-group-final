Rails.application.routes.draw do
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
      resources :employment
      resources :grants
      resources :abilities
      resources :expenses
      resources :healths
      resources :general_iq_statements
      resources :previous_experiences
      resources :expenditure
  end
   resources :attendance_registers
  end
end

  #get '/dropbox/authorize', to: 'dropbox#authorize', :as => :dropbox_auth
 # get '/dropbox/callback', to: 'dropbox#callback', :as =>  :dropbox_callback

 #match '/dropbox/authorize'   => 'dropbox#authorize' , :method => :get , :as => :dropbox_auth
#match '/dropbox/callback' => 'dropbox#callback' , :method => :get , :as =>  :dropbox_callback