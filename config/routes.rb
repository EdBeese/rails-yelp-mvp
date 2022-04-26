Rails.application.routes.draw do
  resources :restaurants, except: [:destroy, :edit, :update] do
    # resources :reviews, only: [ :new, :create ]
    resources :reviews, only: [ :create ]
  end
end
