Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  authenticated :user do
    root to: 'welcome#index', as: :authenticated_root
  end
  root 'greetings#index'

  resources :welcome, only: [:index]
end
