Rails.application.routes.draw do
  # get 'homes/index'
  # get 'homes/new'
  # get 'homes/create'
  # get 'homes/show/:id' => 'homes#show'
  # get 'homes/edit/:id' => 'homes#edit'
  # get 'homes/update/:id' => 'homes#update'
  # get 'homes/destroy/:id' => 'homes#destroy'
  # post 'homes/new'
  # post 'homes/create'
  # patch 'homes/update/:id' => 'homes#update'
  root 'homes#index'
  resources :homes
  
  resources :posts do
    resources :comments
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
