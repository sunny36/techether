Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  root to: 'static_pages#index'
  get 'contact' => 'static_pages#contact'
  get 'about' => 'static_pages#about'

  resources :users, only: [:show]
  resources :subjects do
    member do
      post 'add'
      post 'favourite'
    end
  end
  resources :resources do
    member do
      post 'favourite'
    end
  end
  resources :ratings
end
