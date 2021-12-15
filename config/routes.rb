Rails.application.routes.draw do
  root 'page#index'

  namespace :api do
    namespace :v1 do
      resources :shelters, only: [:index]
    end
  end

  match '*path', to: 'page#index', via: :all
end
