Rails.application.routes.draw do
  get 'medical_procedures/new'
  get 'medical_procedures/show'
  get 'medical_procedures/create'
  get 'medical_procedures/update'

  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :patients, only: [:index, :show, :new, :create, :update, :destroy] do
    resources :consultations, only: [:new, :create]
  end
  resources :consultations, only: [:show] do
    resources :prescription, only: [:new, :create]
  end
  resources :prescription, only: [:show]
end
