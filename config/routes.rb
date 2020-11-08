Rails.application.routes.draw do
  get 'admin/home', to: "admin/base#home"
  namespace :admin do
    resources :users, only: [:index]
    resources :events
  end
  devise_for :users, path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'signup' }
  root 'homepages#home'
  get 'wru/forum', to: 'forumpages#home' 
  resources :events , only: %i[index]do 
   resources :comments
  end
  resources :microposts do 
    resources :comments
  end
end
 