Rails.application.routes.draw do

  devise_for :users

  devise_scope :user do
    authenticated :user do
      root 'apps#index', as: :authenticated_root
    end
    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  resources :apps

  resource :api do
    resource :v0 do
      get :apps, to: 'apis#apps'
      get :unpublished_apps, to: 'apis#unpublished_apps'
    end
  end

  resource :admin, only: [:edit, :update]

end
