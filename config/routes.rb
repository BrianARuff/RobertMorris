Rails.application.routes.draw do

  root 'static_pages#home'

  resources :reviews
  resources :books
  resources :quote_of_the_days
  resources :load_images
  resources :speakings
  resources :bookings
  
  devise_for :users
  devise_scope :user do
  	get 'login' => "devise/sessions#new"
  	get 'signin' => 'devise/sessions#new'
  	get 'signup' => 'devise/registrations#new'
  end

  get 'rebac' => 'static_pages#rebac'
  get 'rebi' => 'static_pages#rebi'
  get 'wcr' => 'static_pages#wcr'
  get 'continuing-ed' => 'static_pages#ce'
  get 'ce' => 'static_pages#ce'
  get 'keynote' => 'static_pages#keynote'

  get 'home' => 'static_pages#home'
  get 'about' => 'static_pages#about'
  get 'contact' => 'static_pages#contact'
  get 'seminars' => 'static_pages#seminars'
  get 'videos' => 'static_pages#videos'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
