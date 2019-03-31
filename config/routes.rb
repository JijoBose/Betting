Rails.application.routes.draw do
  resources :payouts
  resources :bets
  resources :events
  # resources :team_matches
  resources :matches do
    resources :team_matches
    # get :new_team, on: :member
    # get :edit_team, on: :member
    # post :add_team, on: :member
    # put :update_team, on: :member
  end
  resources :teams
  devise_for :users, :controllers => { registrations: 'registrations' }
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
