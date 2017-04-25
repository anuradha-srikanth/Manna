Rails.application.routes.draw do
  resources :documents
  resources :case_documents
  resources :votes
  # resources :cases do
  #   resources :votes
  # end
  resources :cases
  resources :users
  resources :sessions
  get 'votes/new/:id' => 'votes#new', as: :new_vote_taken

  get 'home' => 'home#home', as: :home
  get 'clients' => 'home#clients', as: :clients


  get 'user/edit' => 'users#edit', :as => :edit_current_user
  get 'signup' => 'users#new', :as => :signup
  get 'login' => 'sessions#new', :as => :login
  get 'logout' => 'sessions#destroy', :as => :logout


  root :to => 'home#home'


end
