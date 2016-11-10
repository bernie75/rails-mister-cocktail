Rails.application.routes.draw do
  get 'doses/index'

  get 'doses/create'

  get 'doses/new'

  get 'doses/edit'

  get 'doses/show'

  get 'doses/update'

  get 'doses/destroy'

  get 'ingredients/index'

  get 'ingredients/create'

  get 'ingredients/new'

  get 'ingredients/edit'

  get 'ingredients/show'

  get 'ingredients/update'

  get 'ingredients/destroy'

  get 'cocktails/index'

  get 'cocktails/create'

  get 'cocktails/new'

  get 'cocktails/edit'

  get 'cocktails/show'

  get 'cocktails/update'

  get 'cocktails/destroy'

  resources :cocktails
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
