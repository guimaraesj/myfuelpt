Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :stations, only: %i[show] do
    member do
      get :near # we'll need index -- penso que não faz sentido o index. confirmar se não basta filtro.
    end
    collection do
      get :smart # we probably won't need index
    end
  end
  resources :fuel_types, only: []
  resources :stations_fuel_types, only: :index
  resources :vehicles, only: %i[index new create edit update destroy] do # show not needed.
    resources :vehicle_fuel_types, only: %i[create new]
  end
  resources :discounts, only: %i[index] do # new e create dos discounts serão feitos diretamente na BD.
    resources :user_discounts, only: %i[create]
  end
  resources :user_discounts, only: %i[destroy]
end
