Rails.application.routes.draw do

  resources :speakings
  resources :bookings
  devise_for :users
  
  devise_scope :user do
  	get 'login' => "devise/sessions#new"
  	get 'signin' => 'devise/sessions#new'
  	get 'signup' => 'devise/registrations#new'
  end
  
  root 'static_pages#home'

  get 'rebac' => 'static_pages#rebac'

  get 'home' => 'static_pages#home'

  get 'about' => 'static_pages#about'

  get 'contact' => 'static_pages#contact'

  get 'seminars' => 'static_pages#seminars'

  get 'videos' => 'static_pages#videos'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
