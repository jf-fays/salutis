Rails.application.routes.draw do

  devise_for :users
  root to: "pages#home"
  get '/dashboard', to: 'pages#dashboard'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :patients, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    resources :consultations, only: [:new, :create]
  end
  resources :consultations, only: [:show] do
    resources :prescriptions, only: [:new, :create]
  end
 
  resources :medicines, only: [:index, :show, :new, :create, :update]
  
  resources :prescriptions, only: [:show] do
    resources :prescription_medicines
    resources :medical_procedures, only: [:create]
  end

  # resources :medical_procedures, only: [:show]
end
