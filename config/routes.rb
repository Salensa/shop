Rails.application.routes.draw do
  resources :locations
  resources :shopmia do
    collection { post :import}
  end
  get 'shopmia/index'
  root 'shopmia#index'
end