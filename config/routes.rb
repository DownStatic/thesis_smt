Rails.application.routes.draw do
  resources :schedules, only: [:show, :index, :destroy, :create] do
    resources :appointments, only: [:show, :index, :destroy, :create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
