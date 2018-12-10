Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :users

  resources :teams, only: [:index, :create, :destroy ]

  resources :projects do
    resources :rounds do
      resources :investments
    end
    resources :contributions
  end

  resources :chats do
    resources :messages
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
