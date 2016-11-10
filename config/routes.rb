Rails.application.routes.draw do
  root "cocktail#index"
  resources :cocktails do
    resources :doses
  end

  resources :ingredients

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
