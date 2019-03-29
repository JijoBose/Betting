Rails.application.routes.draw do
  resources :team_matches
  resources :matches
  resources :teams
  devise_for :users, :controllers => { registrations: 'registrations' }
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
