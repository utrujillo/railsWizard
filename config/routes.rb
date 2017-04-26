Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :lists, only: [:new, :create] do
    collection do
      get 'finish' # /list/finish
    end
  end
  resources :lists_steps
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'lists#new'
end
