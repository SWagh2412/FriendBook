Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'home#index'
  devise_for :users

  devise_scope :user do  
   get '/users/sign_out' => 'devise/sessions#destroy'     
  end

  resources :posts do
    resources :comments
  end
  # devise_for :users, controllers: {
  #   registrations: 'users/registrations',
  #   sessions: 'users/sessions'
  # }
end
