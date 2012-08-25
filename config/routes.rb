Electiontron::Application.routes.draw do
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
  devise_for :users

  resources :ballots, only: [:index]
  resources :entries, only: [:index]
  root to: "pages#home"
end
