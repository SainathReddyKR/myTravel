Rails.application.routes.draw do
  resources :vehicle_attachments
  resources :post_attachments
  resources :comments
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get 'pages/home'
  get 'pages/about'
  get 'pages/profile'
  resources :driverrides do
    resources :commonts
  end
  resources :passengerrides do
    resources :comments
  end

  resources :conversations do
    resources :messages
  end
  resources :requestforpms do
    collection do
      post 'updatestatus'
    end
  end
  resources :requestfordms do
    collection do
      post 'updatestatus'
    end
  end
end
