Rails.application.routes.draw do
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  resources :users
  get 'goodbye', to: 'application#goodbye'
  
  resources :articles do
    resources :comments
  end
end
