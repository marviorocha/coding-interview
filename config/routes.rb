Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

   root 'pages#home'
  resources :companies, only: [:index, :show, :create, :update, :destroy, :edit]

  namespace :api do
    namespace :v1 do
      resources :tweets, only: [:index]
      resources :companies, only: [:index] do
          resources :users, only: [:index]
        end
      resources :users, param: :username, only: [:index, :show] do
        resources :tweets, only: [:index]
      end

    end
  end


end
