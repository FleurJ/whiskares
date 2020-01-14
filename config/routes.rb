Rails.application.routes.draw do
  get 'animals/show'
  get 'animals/new'
  get 'animals/create'
  get 'animals/edit'
  get 'animals/update'
  get 'animals/destroy'
  devise_for :users
  root 'homepage#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: %i[show new edit create destroy] do
    resources :animals, only: %i[show new create edit update destroy] do
      resources :missions, only: %i[index show new create edit update destroy]
    end
  end
end
