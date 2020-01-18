Rails.application.routes.draw do
  devise_for :users
  root 'homepage#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: %i[show new edit create destroy update]

  resources :animals, only: %i[show new create edit update destroy] do
    resources :missions, only: %i[show new create edit update destroy]
  end
  get '/missions', to: 'missions#index'
end
