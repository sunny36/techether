Rails.application.routes.draw do
  devise_for :users
  root to: 'static_pages#index'
  get 'contact' => 'static_pages#contact'
  get 'about' => 'static_pages#about'
end
