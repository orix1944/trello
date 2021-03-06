Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  root 'top#index'
  resources :top,only: [:index] do
    collection do
      get 'search'
    end
  end
  resources :user,only: [:show]
  resources :list, only: [:new,:create,:edit,:update,:destroy] do
    resources :card,except: [:index] do
      member do
        delete 'complete'
      end
    end
  end
end
